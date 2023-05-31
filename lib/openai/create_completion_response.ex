defmodule OpenAI.CreateCompletionResponse do
  @moduledoc """
  Provides struct and type for CreateCompletionResponse
  """
  use OpenAI.JasonEncoder

  @type t :: %__MODULE__{
          choices: [map],
          created: integer,
          id: String.t(),
          model: String.t(),
          object: String.t(),
          usage: map | nil
        }

  defstruct [:choices, :created, :id, :model, :object, :usage]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      choices: {:array, :map},
      created: :integer,
      id: :string,
      model: :string,
      object: :string,
      usage: :map
    ]
  end
end
