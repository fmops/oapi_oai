defmodule OpenAI.CreateClassificationResponse do
  @moduledoc """
  Provides struct and type for CreateClassificationResponse
  """

  @type t :: %__MODULE__{
          completion: String.t() | nil,
          label: String.t() | nil,
          model: String.t() | nil,
          object: String.t() | nil,
          search_model: String.t() | nil,
          selected_examples: [map] | nil
        }

  defstruct [:completion, :label, :model, :object, :search_model, :selected_examples]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      completion: :string,
      label: :string,
      model: :string,
      object: :string,
      search_model: :string,
      selected_examples: {:array, :map}
    ]
  end
end
