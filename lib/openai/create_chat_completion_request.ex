defmodule OpenAI.CreateChatCompletionRequest do
  @moduledoc """
  Provides struct and type for CreateChatCompletionRequest
  """
  use OpenAI.JasonEncoder

  @type t :: %__MODULE__{
          frequency_penalty: number | nil,
          logit_bias: map | nil,
          max_tokens: integer | nil,
          messages: [OpenAI.ChatCompletionRequestMessage.t()],
          model: String.t(),
          n: integer | nil,
          presence_penalty: number | nil,
          stop: (String.t() | [String.t()]) | nil,
          stream: boolean | nil,
          temperature: number | nil,
          top_p: number | nil,
          user: String.t() | nil
        }

  defstruct [
    :frequency_penalty,
    :logit_bias,
    :max_tokens,
    :messages,
    :model,
    :n,
    :presence_penalty,
    :stop,
    :stream,
    :temperature,
    :top_p,
    :user
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      frequency_penalty: :number,
      logit_bias: :map,
      max_tokens: :integer,
      messages: {:array, {OpenAI.ChatCompletionRequestMessage, :t}},
      model: :string,
      n: :integer,
      presence_penalty: :number,
      stop: {:union, [:string, array: :string]},
      stream: :boolean,
      temperature: :number,
      top_p: :number,
      user: :string
    ]
  end
end
