defmodule OpenAI.CreateTranscriptionRequest do
  @moduledoc """
  Provides struct and type for CreateTranscriptionRequest
  """
  use OpenAI.JasonEncoder

  @type t :: %__MODULE__{
          file: String.t(),
          language: String.t() | nil,
          model: String.t(),
          prompt: String.t() | nil,
          response_format: String.t() | nil,
          temperature: number | nil
        }

  defstruct [:file, :language, :model, :prompt, :response_format, :temperature]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      file: :string,
      language: :string,
      model: :string,
      prompt: :string,
      response_format: :string,
      temperature: :number
    ]
  end
end
