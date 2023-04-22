import Config

config :oapi_generator,
  default: [
    base_location: "lib/openai",
    base_module: OpenAI
  ]

config :tesla,
  adapter: {Tesla.Adapter.Finch, name: OpenAI.Finch}
