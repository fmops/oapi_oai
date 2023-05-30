defmodule OpenAI.CreateFineTuneRequest do
  @moduledoc """
  Provides struct and type for CreateFineTuneRequest
  """
  use OpenAI.JasonEncoder

  @type t :: %__MODULE__{
          batch_size: integer | nil,
          classification_betas: [number] | nil,
          classification_n_classes: integer | nil,
          classification_positive_class: String.t() | nil,
          compute_classification_metrics: boolean | nil,
          learning_rate_multiplier: number | nil,
          model: String.t() | nil,
          n_epochs: integer | nil,
          prompt_loss_weight: number | nil,
          suffix: String.t() | nil,
          training_file: String.t(),
          validation_file: String.t() | nil
        }

  defstruct [
    :batch_size,
    :classification_betas,
    :classification_n_classes,
    :classification_positive_class,
    :compute_classification_metrics,
    :learning_rate_multiplier,
    :model,
    :n_epochs,
    :prompt_loss_weight,
    :suffix,
    :training_file,
    :validation_file
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      batch_size: :integer,
      classification_betas: {:array, :number},
      classification_n_classes: :integer,
      classification_positive_class: :string,
      compute_classification_metrics: :boolean,
      learning_rate_multiplier: :number,
      model: :string,
      n_epochs: :integer,
      prompt_loss_weight: :number,
      suffix: :string,
      training_file: :string,
      validation_file: :string
    ]
  end
end
