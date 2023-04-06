defmodule OpenAI.FineTuneEvent do
  @moduledoc """
  Provides struct and type for FineTuneEvent
  """

  @type t :: %__MODULE__{
          created_at: integer,
          level: String.t(),
          message: String.t(),
          object: String.t()
        }

  defstruct [:created_at, :level, :message, :object]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [created_at: :integer, level: :string, message: :string, object: :string]
  end
end
