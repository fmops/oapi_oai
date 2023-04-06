defmodule OpenAI.ChatCompletionRequestMessage do
  @moduledoc """
  Provides struct and type for ChatCompletionRequestMessage
  """

  @type t :: %__MODULE__{content: String.t(), name: String.t() | nil, role: String.t()}

  defstruct [:content, :name, :role]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [content: :string, name: :string, role: :string]
  end
end
