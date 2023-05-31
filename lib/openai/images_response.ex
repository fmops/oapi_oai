defmodule OpenAI.ImagesResponse do
  @moduledoc """
  Provides struct and type for ImagesResponse
  """
  use OpenAI.JasonEncoder

  @type t :: %__MODULE__{created: integer, data: [map]}

  defstruct [:created, :data]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [created: :integer, data: {:array, :map}]
  end
end
