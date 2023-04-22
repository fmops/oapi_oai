defmodule OpenAI.Client do
  @base_middleware [
    {Tesla.Middleware.BaseUrl, Application.compile_env(
      :oapi_oai,
      :openai_base_url,
      "https://api.openai.com/v1"
    )},
    Tesla.Middleware.JSON
  ]

  def request(data) do
    api_key = Keyword.get(data.opts, :openai_api_key)
    middleware = [
      {Tesla.Middleware.Headers, [
         {"Authorization", "Bearer #{api_key}"}
      ]}
      | @base_middleware
    ]

    tesla = Tesla.client(middleware)

    tesla
    |> Tesla.request(
      method: data.method,
      url: data.url,
      body: data.body)
  end
end
