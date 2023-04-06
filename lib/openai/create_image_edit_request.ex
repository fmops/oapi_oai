defmodule OpenAI.CreateImageEditRequest do
  @moduledoc """
  Provides struct and type for CreateImageEditRequest
  """

  @type t :: %__MODULE__{
          image: String.t(),
          mask: String.t() | nil,
          n: integer | nil,
          prompt: String.t(),
          response_format: String.t() | nil,
          size: String.t() | nil,
          user: String.t() | nil
        }

  defstruct [:image, :mask, :n, :prompt, :response_format, :size, :user]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      image: :string,
      mask: :string,
      n: :integer,
      prompt: :string,
      response_format: :string,
      size: :string,
      user: :string
    ]
  end
end
