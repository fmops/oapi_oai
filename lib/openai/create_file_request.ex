defmodule OpenAI.CreateFileRequest do
  @moduledoc """
  Provides struct and type for CreateFileRequest
  """
  use OpenAI.JasonEncoder

  @type t :: %__MODULE__{file: String.t(), purpose: String.t()}

  defstruct [:file, :purpose]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [file: :string, purpose: :string]
  end
end
