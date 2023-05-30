defmodule OpenAI.CreateAnswerResponse do
  @moduledoc """
  Provides struct and type for CreateAnswerResponse
  """
  use OpenAI.JasonEncoder

  @type t :: %__MODULE__{
          answers: [String.t()] | nil,
          completion: String.t() | nil,
          model: String.t() | nil,
          object: String.t() | nil,
          search_model: String.t() | nil,
          selected_documents: [map] | nil
        }

  defstruct [:answers, :completion, :model, :object, :search_model, :selected_documents]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      answers: {:array, :string},
      completion: :string,
      model: :string,
      object: :string,
      search_model: :string,
      selected_documents: {:array, :map}
    ]
  end
end
