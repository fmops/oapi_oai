defmodule OpenAI.CreateSearchResponse do
  @moduledoc """
  Provides struct and type for CreateSearchResponse
  """

  @type t :: %__MODULE__{data: [map] | nil, model: String.t() | nil, object: String.t() | nil}

  defstruct [:data, :model, :object]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: {:array, :map}, model: :string, object: :string]
  end
end
