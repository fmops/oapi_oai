defmodule OpenAI.CreateAnswerRequest do
  @moduledoc """
  Provides struct and type for CreateAnswerRequest
  """
  use OpenAI.JasonEncoder

  @type t :: %__MODULE__{
          documents: [String.t()] | nil,
          examples: [[String.t()]],
          examples_context: String.t(),
          expand: [map] | nil,
          file: String.t() | nil,
          logit_bias: map | nil,
          logprobs: integer | nil,
          max_rerank: integer | nil,
          max_tokens: integer | nil,
          model: String.t(),
          n: integer | nil,
          question: String.t(),
          return_metadata: boolean | nil,
          return_prompt: boolean | nil,
          search_model: String.t() | nil,
          stop: (String.t() | [String.t()]) | nil,
          temperature: number | nil,
          user: String.t() | nil
        }

  defstruct [
    :documents,
    :examples,
    :examples_context,
    :expand,
    :file,
    :logit_bias,
    :logprobs,
    :max_rerank,
    :max_tokens,
    :model,
    :n,
    :question,
    :return_metadata,
    :return_prompt,
    :search_model,
    :stop,
    :temperature,
    :user
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      documents: {:array, :string},
      examples: {:array, {:array, :string}},
      examples_context: :string,
      expand: {:array, :map},
      file: :string,
      logit_bias: :map,
      logprobs: :integer,
      max_rerank: :integer,
      max_tokens: :integer,
      model: :string,
      n: :integer,
      question: :string,
      return_metadata: :boolean,
      return_prompt: :boolean,
      search_model: :string,
      stop: {:union, [:string, array: :string]},
      temperature: :number,
      user: :string
    ]
  end
end
