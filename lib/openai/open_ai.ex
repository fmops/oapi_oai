defmodule OpenAI.OpenAi do
  @moduledoc """
  Provides API endpoints related to open ai
  """

  @default_client OpenAI.Client

  @doc """
  Immediately cancel a fine-tune job.


  """
  @spec cancel_fine_tune(String.t(), keyword) :: {:ok, map} | :error
  def cancel_fine_tune(fine_tune_id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [fine_tune_id: fine_tune_id],
      call: {OpenAI.OpenAi, :cancel_fine_tune},
      url: "/fine-tunes/#{fine_tune_id}/cancel",
      method: :post,
      response: [{200, :map}],
      opts: opts
    })
  end

  @doc """
  Answers the specified question using the provided documents and examples.

  The endpoint first [searches](/docs/api-reference/searches) over provided documents or files to find relevant context. The relevant context is combined with the provided examples and question to create the prompt for [completion](/docs/api-reference/completions).


  """
  @spec create_answer(OpenAI.CreateAnswerRequest.t(), keyword) ::
          {:ok, OpenAI.CreateAnswerResponse.t()} | :error
  def create_answer(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {OpenAI.OpenAi, :create_answer},
      url: "/answers",
      body: body,
      method: :post,
      request: [{"application/json", {OpenAI.CreateAnswerRequest, :t}}],
      response: [{200, {OpenAI.CreateAnswerResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  Creates a completion for the chat message

  """
  @spec create_chat_completion(OpenAI.CreateChatCompletionRequest.t(), keyword) ::
          {:ok, OpenAI.CreateChatCompletionResponse.t()} | :error
  def create_chat_completion(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {OpenAI.OpenAi, :create_chat_completion},
      url: "/chat/completions",
      body: body,
      method: :post,
      request: [{"application/json", {OpenAI.CreateChatCompletionRequest, :t}}],
      response: [{200, {OpenAI.CreateChatCompletionResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  Classifies the specified `query` using provided examples.

  The endpoint first [searches](/docs/api-reference/searches) over the labeled examples
  to select the ones most relevant for the particular query. Then, the relevant examples
  are combined with the query to construct a prompt to produce the final label via the
  [completions](/docs/api-reference/completions) endpoint.

  Labeled examples can be provided via an uploaded `file`, or explicitly listed in the
  request using the `examples` parameter for quick tests and small scale use cases.


  """
  @spec create_classification(OpenAI.CreateClassificationRequest.t(), keyword) ::
          {:ok, OpenAI.CreateClassificationResponse.t()} | :error
  def create_classification(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {OpenAI.OpenAi, :create_classification},
      url: "/classifications",
      body: body,
      method: :post,
      request: [{"application/json", {OpenAI.CreateClassificationRequest, :t}}],
      response: [{200, {OpenAI.CreateClassificationResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  Creates a completion for the provided prompt and parameters

  """
  @spec create_completion(OpenAI.CreateCompletionRequest.t(), keyword) ::
          {:ok, OpenAI.CreateCompletionResponse.t()} | :error
  def create_completion(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {OpenAI.OpenAi, :create_completion},
      url: "/completions",
      body: body,
      method: :post,
      request: [{"application/json", {OpenAI.CreateCompletionRequest, :t}}],
      response: [{200, {OpenAI.CreateCompletionResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  Creates a new edit for the provided input, instruction, and parameters.

  """
  @spec create_edit(OpenAI.CreateEditRequest.t(), keyword) ::
          {:ok, OpenAI.CreateEditResponse.t()} | :error
  def create_edit(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {OpenAI.OpenAi, :create_edit},
      url: "/edits",
      body: body,
      method: :post,
      request: [{"application/json", {OpenAI.CreateEditRequest, :t}}],
      response: [{200, {OpenAI.CreateEditResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  Creates an embedding vector representing the input text.

  """
  @spec create_embedding(OpenAI.CreateEmbeddingRequest.t(), keyword) ::
          {:ok, OpenAI.CreateEmbeddingResponse.t()} | :error
  def create_embedding(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {OpenAI.OpenAi, :create_embedding},
      url: "/embeddings",
      body: body,
      method: :post,
      request: [{"application/json", {OpenAI.CreateEmbeddingRequest, :t}}],
      response: [{200, {OpenAI.CreateEmbeddingResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  Upload a file that contains document(s) to be used across various endpoints/features. Currently, the size of all the files uploaded by one organization can be up to 1 GB. Please contact us if you need to increase the storage limit.


  """
  @spec create_file(OpenAI.CreateFileRequest.t(), keyword) :: {:ok, map} | :error
  def create_file(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {OpenAI.OpenAi, :create_file},
      url: "/files",
      body: body,
      method: :post,
      request: [{"multipart/form-data", {OpenAI.CreateFileRequest, :t}}],
      response: [{200, :map}],
      opts: opts
    })
  end

  @doc """
  Creates a job that fine-tunes a specified model from a given dataset.

  Response includes details of the enqueued job including job status and the name of the fine-tuned models once complete.

  [Learn more about Fine-tuning](/docs/guides/fine-tuning)


  """
  @spec create_fine_tune(OpenAI.CreateFineTuneRequest.t(), keyword) :: {:ok, map} | :error
  def create_fine_tune(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {OpenAI.OpenAi, :create_fine_tune},
      url: "/fine-tunes",
      body: body,
      method: :post,
      request: [{"application/json", {OpenAI.CreateFineTuneRequest, :t}}],
      response: [{200, :map}],
      opts: opts
    })
  end

  @doc """
  Creates an image given a prompt.

  """
  @spec create_image(OpenAI.CreateImageRequest.t(), keyword) :: {:ok, map} | :error
  def create_image(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {OpenAI.OpenAi, :create_image},
      url: "/images/generations",
      body: body,
      method: :post,
      request: [{"application/json", {OpenAI.CreateImageRequest, :t}}],
      response: [{200, :map}],
      opts: opts
    })
  end

  @doc """
  Creates an edited or extended image given an original image and a prompt.

  """
  @spec create_image_edit(OpenAI.CreateImageEditRequest.t(), keyword) :: {:ok, map} | :error
  def create_image_edit(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {OpenAI.OpenAi, :create_image_edit},
      url: "/images/edits",
      body: body,
      method: :post,
      request: [{"multipart/form-data", {OpenAI.CreateImageEditRequest, :t}}],
      response: [{200, :map}],
      opts: opts
    })
  end

  @doc """
  Creates a variation of a given image.

  """
  @spec create_image_variation(OpenAI.CreateImageVariationRequest.t(), keyword) ::
          {:ok, map} | :error
  def create_image_variation(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {OpenAI.OpenAi, :create_image_variation},
      url: "/images/variations",
      body: body,
      method: :post,
      request: [{"multipart/form-data", {OpenAI.CreateImageVariationRequest, :t}}],
      response: [{200, :map}],
      opts: opts
    })
  end

  @doc """
  Classifies if text violates OpenAI's Content Policy

  """
  @spec create_moderation(OpenAI.CreateModerationRequest.t(), keyword) ::
          {:ok, OpenAI.CreateModerationResponse.t()} | :error
  def create_moderation(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {OpenAI.OpenAi, :create_moderation},
      url: "/moderations",
      body: body,
      method: :post,
      request: [{"application/json", {OpenAI.CreateModerationRequest, :t}}],
      response: [{200, {OpenAI.CreateModerationResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  The search endpoint computes similarity scores between provided query and documents. Documents can be passed directly to the API if there are no more than 200 of them.

  To go beyond the 200 document limit, documents can be processed offline and then used for efficient retrieval at query time. When `file` is set, the search endpoint searches over all the documents in the given file and returns up to the `max_rerank` number of documents. These documents will be returned along with their search scores.

  The similarity score is a positive score that usually ranges from 0 to 300 (but can sometimes go higher), where a score above 200 usually means the document is semantically similar to the query.


  """
  @spec create_search(String.t(), OpenAI.CreateSearchRequest.t(), keyword) ::
          {:ok, OpenAI.CreateSearchResponse.t()} | :error
  def create_search(engine_id, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [engine_id: engine_id, body: body],
      call: {OpenAI.OpenAi, :create_search},
      url: "/engines/#{engine_id}/search",
      body: body,
      method: :post,
      request: [{"application/json", {OpenAI.CreateSearchRequest, :t}}],
      response: [{200, {OpenAI.CreateSearchResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  Transcribes audio into the input language.

  """
  @spec create_transcription(OpenAI.CreateTranscriptionRequest.t(), keyword) ::
          {:ok, OpenAI.CreateTranscriptionResponse.t()} | :error
  def create_transcription(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {OpenAI.OpenAi, :create_transcription},
      url: "/audio/transcriptions",
      body: body,
      method: :post,
      request: [{"multipart/form-data", {OpenAI.CreateTranscriptionRequest, :t}}],
      response: [{200, {OpenAI.CreateTranscriptionResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  Translates audio into into English.

  """
  @spec create_translation(OpenAI.CreateTranslationRequest.t(), keyword) ::
          {:ok, OpenAI.CreateTranslationResponse.t()} | :error
  def create_translation(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {OpenAI.OpenAi, :create_translation},
      url: "/audio/translations",
      body: body,
      method: :post,
      request: [{"multipart/form-data", {OpenAI.CreateTranslationRequest, :t}}],
      response: [{200, {OpenAI.CreateTranslationResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  Delete a file.

  """
  @spec delete_file(String.t(), keyword) :: {:ok, OpenAI.DeleteFileResponse.t()} | :error
  def delete_file(file_id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [file_id: file_id],
      call: {OpenAI.OpenAi, :delete_file},
      url: "/files/#{file_id}",
      method: :delete,
      response: [{200, {OpenAI.DeleteFileResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  Delete a fine-tuned model. You must have the Owner role in your organization.

  """
  @spec delete_model(String.t(), keyword) :: {:ok, OpenAI.DeleteModelResponse.t()} | :error
  def delete_model(model, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [model: model],
      call: {OpenAI.OpenAi, :delete_model},
      url: "/models/#{model}",
      method: :delete,
      response: [{200, {OpenAI.DeleteModelResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  Returns the contents of the specified file

  """
  @spec download_file(String.t(), keyword) :: {:ok, String.t()} | :error
  def download_file(file_id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [file_id: file_id],
      call: {OpenAI.OpenAi, :download_file},
      url: "/files/#{file_id}/content",
      method: :get,
      response: [{200, :string}],
      opts: opts
    })
  end

  @doc """
  Lists the currently available (non-finetuned) models, and provides basic information about each one such as the owner and availability.

  """
  @spec list_engines(keyword) :: {:ok, OpenAI.ListEnginesResponse.t()} | :error
  def list_engines(opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      call: {OpenAI.OpenAi, :list_engines},
      url: "/engines",
      method: :get,
      response: [{200, {OpenAI.ListEnginesResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  Returns a list of files that belong to the user's organization.

  """
  @spec list_files(keyword) :: {:ok, OpenAI.ListFilesResponse.t()} | :error
  def list_files(opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      call: {OpenAI.OpenAi, :list_files},
      url: "/files",
      method: :get,
      response: [{200, {OpenAI.ListFilesResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  Get fine-grained status updates for a fine-tune job.


  ## Options

    * `stream` (boolean): Whether to stream events for the fine-tune job. If set to true,
  events will be sent as data-only
  [server-sent events](https://developer.mozilla.org/en-US/docs/Web/API/Server-sent_events/Using_server-sent_events#Event_stream_format)
  as they become available. The stream will terminate with a
  `data: [DONE]` message when the job is finished (succeeded, cancelled,
  or failed).

  If set to false, only events generated so far will be returned.


  """
  @spec list_fine_tune_events(String.t(), keyword) ::
          {:ok, OpenAI.ListFineTuneEventsResponse.t()} | :error
  def list_fine_tune_events(fine_tune_id, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:stream])

    client.request(%{
      args: [fine_tune_id: fine_tune_id],
      call: {OpenAI.OpenAi, :list_fine_tune_events},
      url: "/fine-tunes/#{fine_tune_id}/events",
      method: :get,
      query: query,
      response: [{200, {OpenAI.ListFineTuneEventsResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  List your organization's fine-tuning jobs


  """
  @spec list_fine_tunes(keyword) :: {:ok, OpenAI.ListFineTunesResponse.t()} | :error
  def list_fine_tunes(opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      call: {OpenAI.OpenAi, :list_fine_tunes},
      url: "/fine-tunes",
      method: :get,
      response: [{200, {OpenAI.ListFineTunesResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  Lists the currently available models, and provides basic information about each one such as the owner and availability.

  """
  @spec list_models(keyword) :: {:ok, OpenAI.ListModelsResponse.t()} | :error
  def list_models(opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      call: {OpenAI.OpenAi, :list_models},
      url: "/models",
      method: :get,
      response: [{200, {OpenAI.ListModelsResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  Retrieves a model instance, providing basic information about it such as the owner and availability.

  """
  @spec retrieve_engine(String.t(), keyword) :: {:ok, map} | :error
  def retrieve_engine(engine_id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [engine_id: engine_id],
      call: {OpenAI.OpenAi, :retrieve_engine},
      url: "/engines/#{engine_id}",
      method: :get,
      response: [{200, :map}],
      opts: opts
    })
  end

  @doc """
  Returns information about a specific file.

  """
  @spec retrieve_file(String.t(), keyword) :: {:ok, map} | :error
  def retrieve_file(file_id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [file_id: file_id],
      call: {OpenAI.OpenAi, :retrieve_file},
      url: "/files/#{file_id}",
      method: :get,
      response: [{200, :map}],
      opts: opts
    })
  end

  @doc """
  Gets info about the fine-tune job.

  [Learn more about Fine-tuning](/docs/guides/fine-tuning)


  """
  @spec retrieve_fine_tune(String.t(), keyword) :: {:ok, map} | :error
  def retrieve_fine_tune(fine_tune_id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [fine_tune_id: fine_tune_id],
      call: {OpenAI.OpenAi, :retrieve_fine_tune},
      url: "/fine-tunes/#{fine_tune_id}",
      method: :get,
      response: [{200, :map}],
      opts: opts
    })
  end

  @doc """
  Retrieves a model instance, providing basic information about the model such as the owner and permissioning.

  """
  @spec retrieve_model(String.t(), keyword) :: {:ok, map} | :error
  def retrieve_model(model, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [model: model],
      call: {OpenAI.OpenAi, :retrieve_model},
      url: "/models/#{model}",
      method: :get,
      response: [{200, :map}],
      opts: opts
    })
  end
end
