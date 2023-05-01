defmodule OpenAITest do
  use ExUnit.Case
  doctest OpenAI

  setup do
    bypass = Bypass.open()
    {:ok, bypass: bypass}
  end

  describe "completions" do
    test "fails with missing API key", %{bypass: bypass} do
      Bypass.expect_once(bypass, fn conn ->
        Stubidity.call(conn, [])
      end)

      assert :error =
               OpenAI.OpenAI.create_completion(
                 %{
                   prompt: "Once upon a time",
                   model: "davinci"
                 },
                 base_url: "http://localhost:#{bypass.port}/v1"
               )
    end

    test "suceeds with valid API key", %{bypass: bypass} do
      Bypass.expect_once(bypass, fn conn ->
        Stubidity.call(conn, [])
      end)

      assert {:ok, resp} =
               OpenAI.OpenAI.create_completion(
                 %{
                   prompt: "Once upon a time",
                   model: "davinci"
                 },
                 api_key: "sk-foo",
                 base_url: "http://localhost:#{bypass.port}/v1"
               )

      assert Enum.at(resp.choices, 0)["text"] =~ "I am writing"
    end
  end

  describe "chat completions" do
    test "fails with missing API key", %{bypass: bypass} do
      Bypass.expect_once(bypass, fn conn ->
        Stubidity.call(conn, [])
      end)

      assert :error =
               OpenAI.OpenAI.create_chat_completion(
                 %{
                   model: "gpt-3.5-turbo",
                   messages: [
                     %{role: "system", text: "Tell a joke."}
                   ]
                 },
                 base_url: "http://localhost:#{bypass.port}/v1"
               )
    end

    test "suceeds with valid API key", %{bypass: bypass} do
      Bypass.expect_once(bypass, fn conn ->
        Stubidity.call(conn, [])
      end)

      assert {:ok, resp} =
               OpenAI.OpenAI.create_chat_completion(
                 %{
                   model: "gpt-3.5-turbo",
                   messages: [
                     %{role: "system", text: "Tell a joke."}
                   ]
                 },
                 api_key: "sk-foo",
                 base_url: "http://localhost:#{bypass.port}/v1"
               )

      assert Enum.at(resp.choices, 0)["message"]["role"] == "assistant"
    end
  end

  describe "embeddings" do
    test "fails with missing API key", %{bypass: bypass} do
      Bypass.expect_once(bypass, fn conn ->
        Stubidity.call(conn, [])
      end)

      assert :error =
               OpenAI.OpenAI.create_embedding(
                 %{
                   model: "text-embedding-ada-002",
                   input: "Once upon a time"
                 },
                 base_url: "http://localhost:#{bypass.port}/v1"
               )
    end

    test "suceeds with valid API key", %{bypass: bypass} do
      Bypass.expect_once(bypass, fn conn ->
        Stubidity.call(conn, [])
      end)

      assert {:ok, resp} =
               OpenAI.OpenAI.create_embedding(
                 %{
                   model: "text-embedding-ada-002",
                   input: "Once upon a time"
                 },
                 api_key: "sk-foo",
                 base_url: "http://localhost:#{bypass.port}/v1"
               )

      assert Enum.at(resp.data, 0)["object"] == "embedding"
    end
  end
end
