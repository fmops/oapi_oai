defmodule OpenAI.CreateEditRequest do
  @moduledoc """
  Provides struct and type for CreateEditRequest
  """
  use OpenAI.JasonEncoder

  @type t :: %__MODULE__{
          input: String.t() | nil,
          instruction: String.t(),
          model: String.t(),
          n: integer | nil,
          temperature: number | nil,
          top_p: number | nil
        }

  defstruct [:input, :instruction, :model, :n, :temperature, :top_p]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      input: :string,
      instruction: :string,
      model: :string,
      n: :integer,
      temperature: :number,
      top_p: :number
    ]
  end
end
