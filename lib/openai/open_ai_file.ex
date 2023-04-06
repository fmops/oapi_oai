defmodule OpenAI.OpenAIFile do
  @moduledoc """
  Provides struct and type for OpenAIFile
  """

  @type t :: %__MODULE__{
          bytes: integer,
          created_at: integer,
          filename: String.t(),
          id: String.t(),
          object: String.t(),
          purpose: String.t(),
          status: String.t() | nil,
          status_details: map | nil
        }

  defstruct [:bytes, :created_at, :filename, :id, :object, :purpose, :status, :status_details]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      bytes: :integer,
      created_at: :integer,
      filename: :string,
      id: :string,
      object: :string,
      purpose: :string,
      status: :string,
      status_details: :map
    ]
  end
end
