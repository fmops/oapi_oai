defmodule OpenAITest do
  use ExUnit.Case
  doctest OpenAI

  test "completions" do
    assert {:ok, _resp} = OpenAI.OpenAI.create_completion(%{
      prompt: "Once upon a time",
      model: "davinci"
    }, openai_api_key: System.get_env("OPENAI_API_KEY"))
  end
end
