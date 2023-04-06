defmodule OpenAI.Engine do
  @moduledoc """
  Provides struct and type for Engine
  """

  @type t :: %__MODULE__{
          created: integer | nil,
          id: String.t(),
          object: String.t(),
          ready: boolean
        }

  defstruct [:created, :id, :object, :ready]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [created: :integer, id: :string, object: :string, ready: :boolean]
  end
end
