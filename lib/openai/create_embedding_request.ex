defmodule OpenAI.CreateEmbeddingRequest do
  @moduledoc """
  Provides struct and type for CreateEmbeddingRequest
  """

  @type t :: %__MODULE__{
          input: String.t() | [integer] | [String.t()] | [[integer]],
          model: String.t(),
          user: String.t() | nil
        }

  defstruct [:input, :model, :user]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      input: {:union, [:string, array: :string, array: :integer, array: {:array, :integer}]},
      model: :string,
      user: :string
    ]
  end
end
