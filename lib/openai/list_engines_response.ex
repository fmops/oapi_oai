defmodule OpenAI.ListEnginesResponse do
  @moduledoc """
  Provides struct and type for ListEnginesResponse
  """
  use OpenAI.JasonEncoder

  @type t :: %__MODULE__{data: [map], object: String.t()}

  defstruct [:data, :object]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: {:array, :map}, object: :string]
  end
end
