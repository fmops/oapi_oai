defmodule OpenAI.CreateTranslationResponse do
  @moduledoc """
  Provides struct and type for CreateTranslationResponse
  """
  use OpenAI.JasonEncoder

  @type t :: %__MODULE__{text: String.t()}

  defstruct [:text]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [text: :string]
  end
end
