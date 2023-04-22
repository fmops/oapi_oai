defmodule OpenAI.Client do

  def request(data, _opts \\ nil) do
    middleware = [
      {Tesla.Middleware.BaseUrl, "https://fmops.ai/api/v1/proxy/openai/v1"},
      {Tesla.Middleware.Headers, [
         {"Authorization", "Bearer #{System.get_env("OPENAI_API_KEY")}"}
      ]},
      Tesla.Middleware.JSON
    ]

    tesla = Tesla.client(middleware)

    # TODO: dynamic client config with per-tenant key from opts
    case data.method do
      :get ->
        tesla
        |> Tesla.get(data.url)

      :post ->
        tesla
        |> Tesla.post(
          data.url,
          data.body
        )
    end
  end
end
