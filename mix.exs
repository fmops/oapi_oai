defmodule OpenAI.MixProject do
  use Mix.Project

  def project do
    [
      app: :oapi_oai,
      version: "0.1.2",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      description: description()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {OpenAI, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false},
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 1.3", only: [:dev, :test], runtime: false},
      {:oapi_generator, "~> 0.0.3", only: :dev, runtime: false},
      {:tesla, "~> 1.6"},
      {:finch, "~> 0.16"},
      {:jason, "~> 1.4"}
    ]
  end

  defp description() do
    "Client SDK for OpenAI generated from their [OpenAPI specification](https://github.com/openai/openai-openapi)."
  end

  defp package() do
    [
      # This option is only needed when you don't want to use the OTP application name
      name: "oapi_oai",
      # These are the default files included in the package
      files: ~w(lib .formatter.exs mix.exs README* LICENSE*),
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/fmops/oapi_oai"}
    ]
  end
end
