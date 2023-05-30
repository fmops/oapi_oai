defmodule OpenAI.JasonEncoder do
  defmacro __using__(_opts) do
    quote do
      defimpl Jason.Encoder, for: __MODULE__ do
        def encode(value, _opts) do
          value
          |> Map.from_struct()
          |> Enum.filter(fn {_, v} -> v != nil end)
          |> Enum.into(%{})
          |> Jason.encode!()
        end
      end
    end
  end
end
