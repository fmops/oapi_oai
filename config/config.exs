import Config

if config_env() == :dev do
  config :oapi_generator,
    default: [
      base_location: "lib/openai",
      base_module: OpenAI,
      schema_use: OpenAI.JasonEncoder
    ]
end

config :tesla,
  adapter: {Tesla.Adapter.Finch, name: OpenAI.Finch}
