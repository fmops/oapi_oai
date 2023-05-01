defmodule OpenAITest do
  use ExUnit.Case
  doctest OpenAI

  setup do
    bypass = Bypass.open()
    {:ok, bypass: bypass}
  end

  test "fails with missing API key", %{bypass: bypass} do
    Bypass.expect_once(bypass, fn conn ->
      Stubidity.call(conn, [])
    end)

    assert :error = OpenAI.OpenAI.create_completion(%{
      prompt: "Once upon a time",
      model: "davinci"
    }, base_url: "http://localhost:#{bypass.port}/v1")
  end

  test "suceeds with valid API key", %{bypass: bypass} do
    Bypass.expect_once(bypass, fn conn ->
      Stubidity.call(conn, [])
    end)

    assert {:ok, _resp} = OpenAI.OpenAI.create_completion(%{
      prompt: "Once upon a time",
      model: "davinci"
    }, openai_api_key: System.get_env("OPENAI_API_KEY"), base_url: "http://localhost:#{bypass.port}/v1")
  end
end
