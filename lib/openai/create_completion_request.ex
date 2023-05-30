defmodule OpenAI.CreateCompletionRequest do
  @moduledoc """
  Provides struct and type for CreateCompletionRequest
  """
  use OpenAI.JasonEncoder

  @type t :: %__MODULE__{
          best_of: integer | nil,
          echo: boolean | nil,
          frequency_penalty: number | nil,
          logit_bias: map | nil,
          logprobs: integer | nil,
          max_tokens: integer | nil,
          model: String.t(),
          n: integer | nil,
          presence_penalty: number | nil,
          prompt: (String.t() | [integer] | [String.t()] | [[integer]]) | nil,
          stop: (String.t() | [String.t()]) | nil,
          stream: boolean | nil,
          suffix: String.t() | nil,
          temperature: number | nil,
          top_p: number | nil,
          user: String.t() | nil
        }

  defstruct [
    :best_of,
    :echo,
    :frequency_penalty,
    :logit_bias,
    :logprobs,
    :max_tokens,
    :model,
    :n,
    :presence_penalty,
    :prompt,
    :stop,
    :stream,
    :suffix,
    :temperature,
    :top_p,
    :user
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      best_of: :integer,
      echo: :boolean,
      frequency_penalty: :number,
      logit_bias: :map,
      logprobs: :integer,
      max_tokens: :integer,
      model: :string,
      n: :integer,
      presence_penalty: :number,
      prompt: {:union, [:string, array: :string, array: :integer, array: {:array, :integer}]},
      stop: {:union, [:string, array: :string]},
      stream: :boolean,
      suffix: :string,
      temperature: :number,
      top_p: :number,
      user: :string
    ]
  end
end
