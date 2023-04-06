defmodule OpenAI.CreateImageVariationRequest do
  @moduledoc """
  Provides struct and type for CreateImageVariationRequest
  """

  @type t :: %__MODULE__{
          image: String.t(),
          n: integer | nil,
          response_format: String.t() | nil,
          size: String.t() | nil,
          user: String.t() | nil
        }

  defstruct [:image, :n, :response_format, :size, :user]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [image: :string, n: :integer, response_format: :string, size: :string, user: :string]
  end
end
