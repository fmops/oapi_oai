defmodule OpenAI.CreateModerationRequest do
  @moduledoc """
  Provides struct and type for CreateModerationRequest
  """

  @type t :: %__MODULE__{input: String.t() | [String.t()], model: String.t() | nil}

  defstruct [:input, :model]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [input: {:union, [:string, array: :string]}, model: :string]
  end
end
