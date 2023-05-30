defmodule OpenAI.CreateEmbeddingResponse do
  @moduledoc """
  Provides struct and type for CreateEmbeddingResponse
  """
  use OpenAI.JasonEncoder

  @type t :: %__MODULE__{data: [map], model: String.t(), object: String.t(), usage: map}

  defstruct [:data, :model, :object, :usage]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: {:array, :map}, model: :string, object: :string, usage: :map]
  end
end
