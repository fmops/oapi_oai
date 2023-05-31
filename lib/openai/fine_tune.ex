defmodule OpenAI.FineTune do
  @moduledoc """
  Provides struct and type for FineTune
  """
  use OpenAI.JasonEncoder

  @type t :: %__MODULE__{
          created_at: integer,
          events: [map] | nil,
          fine_tuned_model: String.t() | nil,
          hyperparams: map,
          id: String.t(),
          model: String.t(),
          object: String.t(),
          organization_id: String.t(),
          result_files: [map],
          status: String.t(),
          training_files: [map],
          updated_at: integer,
          validation_files: [map]
        }

  defstruct [
    :created_at,
    :events,
    :fine_tuned_model,
    :hyperparams,
    :id,
    :model,
    :object,
    :organization_id,
    :result_files,
    :status,
    :training_files,
    :updated_at,
    :validation_files
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      created_at: :integer,
      events: {:array, :map},
      fine_tuned_model: :string,
      hyperparams: :map,
      id: :string,
      model: :string,
      object: :string,
      organization_id: :string,
      result_files: {:array, :map},
      status: :string,
      training_files: {:array, :map},
      updated_at: :integer,
      validation_files: {:array, :map}
    ]
  end
end
