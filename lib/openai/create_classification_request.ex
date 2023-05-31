defmodule OpenAI.CreateClassificationRequest do
  @moduledoc """
  Provides struct and type for CreateClassificationRequest
  """
  use OpenAI.JasonEncoder

  @type t :: %__MODULE__{
          examples: [[String.t()]] | nil,
          expand: [map] | nil,
          file: String.t() | nil,
          labels: [String.t()] | nil,
          logit_bias: map | nil,
          logprobs: integer | nil,
          max_examples: integer | nil,
          model: String.t(),
          query: String.t(),
          return_metadata: boolean | nil,
          return_prompt: boolean | nil,
          search_model: String.t() | nil,
          temperature: number | nil,
          user: String.t() | nil
        }

  defstruct [
    :examples,
    :expand,
    :file,
    :labels,
    :logit_bias,
    :logprobs,
    :max_examples,
    :model,
    :query,
    :return_metadata,
    :return_prompt,
    :search_model,
    :temperature,
    :user
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      examples: {:array, {:array, :string}},
      expand: {:array, :map},
      file: :string,
      labels: {:array, :string},
      logit_bias: :map,
      logprobs: :integer,
      max_examples: :integer,
      model: :string,
      query: :string,
      return_metadata: :boolean,
      return_prompt: :boolean,
      search_model: :string,
      temperature: :number,
      user: :string
    ]
  end
end
