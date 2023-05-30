defmodule OpenAI.CreateEditResponse do
  @moduledoc """
  Provides struct and type for CreateEditResponse
  """
  use OpenAI.JasonEncoder

  @type t :: %__MODULE__{choices: [map], created: integer, object: String.t(), usage: map}

  defstruct [:choices, :created, :object, :usage]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [choices: {:array, :map}, created: :integer, object: :string, usage: :map]
  end
end
