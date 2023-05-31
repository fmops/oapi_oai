defmodule OpenAI.CreateModerationResponse do
  @moduledoc """
  Provides struct and type for CreateModerationResponse
  """
  use OpenAI.JasonEncoder

  @type t :: %__MODULE__{id: String.t(), model: String.t(), results: [map]}

  defstruct [:id, :model, :results]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [id: :string, model: :string, results: {:array, :map}]
  end
end
