# OpenAI

Client SDK for OpenAI generated from their [OpenAPI specification](https://github.com/openai/openai-openapi).

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `oapi_oai` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:oapi_oai, "~> 0.1"}
  ]
end
```

Configure a base URL in your application `config.exs`:

```elixir
config :oapi_oai,
  openai_base_url: "https://fmops.ai/api/v1/openai/v1"
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/oapi_oai>.

## Developing

To regenerate the API

```bash
mix api.gen default ./resources/openai-openapi/openapi.yaml
```