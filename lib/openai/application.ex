defmodule OpenAI.Application do
  use Application

  @impl true
  def start(_type, _args) do
    children = [
      {Finch, name: OpenAI.Finch}
    ]

    opts = [strategy: :one_for_one, name: OpenAI.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
