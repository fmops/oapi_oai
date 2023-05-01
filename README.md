# OpenAI
[![Build Status](https://github.com/fmops/oapi_oai/workflows/Elixir%20CI/badge.svg)](https://github.com/fmops/oapi_oai/actions/workflows/elixir.yml) [![Hex.pm](https://img.shields.io/hexpm/v/oapi_oai.svg)](https://hex.pm/packages/oapi_oai) [![Documentation](https://img.shields.io/badge/documentation-gray)](https://hexdocs.pm/oapi_oai)

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

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/oapi_oai>.

## Developing

To regenerate the API

```bash
mix api.gen default ./resources/openai-openapi/openapi.yaml
```