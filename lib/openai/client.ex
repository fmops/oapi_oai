defmodule OpenAI.Client do

  def request(data, _opts \\ nil) do
    middleware = [
      {Tesla.Middleware.BaseUrl, "https://fmops.ai/api/v1/proxy/openai/v1"},
      {Tesla.Middleware.Headers, [
          # TODO: dynamic client config with per-tenant key from opts
         {"Authorization", "Bearer #{System.get_env("OPENAI_API_KEY")}"}
      ]},
      Tesla.Middleware.JSON
    ]

    tesla = Tesla.client(middleware)

    tesla
    |> Tesla.request(
      method: data.method,
      url: data.url,
      body: data.body)
  end
end
