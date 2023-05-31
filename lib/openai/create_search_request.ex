defmodule OpenAI.CreateSearchRequest do
  @moduledoc """
  Provides struct and type for CreateSearchRequest
  """
  use OpenAI.JasonEncoder

  @type t :: %__MODULE__{
          documents: [String.t()] | nil,
          file: String.t() | nil,
          max_rerank: integer | nil,
          query: String.t(),
          return_metadata: boolean | nil,
          user: String.t() | nil
        }

  defstruct [:documents, :file, :max_rerank, :query, :return_metadata, :user]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      documents: {:array, :string},
      file: :string,
      max_rerank: :integer,
      query: :string,
      return_metadata: :boolean,
      user: :string
    ]
  end
end
