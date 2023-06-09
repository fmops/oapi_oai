defmodule OpenAI.Client do
  require Logger

  @base_middleware [
    {Tesla.Middleware.BaseUrl,
     Application.compile_env(
       :oapi_oai,
       :openai_base_url,
       "https://api.openai.com/v1"
     )},
    Tesla.Middleware.JSON
  ]

  def request(data) do
    api_key = Keyword.get(data.opts, :api_key)
    base_url = Keyword.get(data.opts, :base_url, "https://api.openai.com/v1")

    middleware =
      if api_key != nil do
        [
          {Tesla.Middleware.Headers,
           [
             {"Authorization", "Bearer #{api_key}"}
           ]}
          | @base_middleware
        ]
      else
        @base_middleware
      end
      |> then(fn m ->
        [{Tesla.Middleware.BaseUrl, base_url} | m]
      end)

    tesla = Tesla.client(middleware)

    # convert to JSON, deleting nil valued keys
    body =
      data.body
      |> case do
        body when is_struct(body) ->
          body
          |> Map.from_struct()
          |> Enum.filter(fn {_, v} -> v != nil end)
          |> Enum.into(%{})

        body ->
          body
      end

    tesla
    |> Tesla.request(
      method: data.method,
      url: data.url,
      body: body
    )
    |> case do
      {:ok, %Tesla.Env{status: 200, body: body}} ->
        struct = struct(data.response |> Enum.at(0) |> elem(1) |> elem(0))

        resp =
          Enum.reduce(Map.to_list(struct), struct, fn {k, _}, acc ->
            case Map.fetch(body, Atom.to_string(k)) do
              {:ok, v} -> %{acc | k => v}
              :error -> acc
            end
          end)

        {:ok, resp}

      error ->
        Logger.warn("Error: #{inspect(error)}")
        :error
    end
  end
end
