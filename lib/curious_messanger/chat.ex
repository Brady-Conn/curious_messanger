defmodule CuriousMessanger.Chat do
  @moduledoc """
  The Chat context.
  """

  import Ecto.Query, warn: false
  alias CuriousMessanger.Repo

  alias CuriousMessanger.Chat.Conversation

  @doc """
  Returns the list of chat_conversation.

  ## Examples

      iex> list_chat_conversation()
      [%Conversation{}, ...]

  """
  def list_chat_conversation do
    Repo.all(Conversation)
  end

  @doc """
  Gets a single conversation.

  Raises `Ecto.NoResultsError` if the Conversation does not exist.

  ## Examples

      iex> get_conversation!(123)
      %Conversation{}

      iex> get_conversation!(456)
      ** (Ecto.NoResultsError)

  """
  def get_conversation!(id), do: Repo.get!(Conversation, id)

  @doc """
  Creates a conversation.

  ## Examples

      iex> create_conversation(%{field: value})
      {:ok, %Conversation{}}

      iex> create_conversation(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_conversation(attrs \\ %{}) do
    %Conversation{}
    |> Conversation.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a conversation.

  ## Examples

      iex> update_conversation(conversation, %{field: new_value})
      {:ok, %Conversation{}}

      iex> update_conversation(conversation, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_conversation(%Conversation{} = conversation, attrs) do
    conversation
    |> Conversation.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a conversation.

  ## Examples

      iex> delete_conversation(conversation)
      {:ok, %Conversation{}}

      iex> delete_conversation(conversation)
      {:error, %Ecto.Changeset{}}

  """
  def delete_conversation(%Conversation{} = conversation) do
    Repo.delete(conversation)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking conversation changes.

  ## Examples

      iex> change_conversation(conversation)
      %Ecto.Changeset{data: %Conversation{}}

  """
  def change_conversation(%Conversation{} = conversation, attrs \\ %{}) do
    Conversation.changeset(conversation, attrs)
  end

  alias CuriousMessanger.Chat.ConversationMemeber

  @doc """
  Returns the list of chat_conversation_member.

  ## Examples

      iex> list_chat_conversation_member()
      [%ConversationMemeber{}, ...]

  """
  def list_chat_conversation_member do
    Repo.all(ConversationMemeber)
  end

  @doc """
  Gets a single conversation_memeber.

  Raises `Ecto.NoResultsError` if the Conversation memeber does not exist.

  ## Examples

      iex> get_conversation_memeber!(123)
      %ConversationMemeber{}

      iex> get_conversation_memeber!(456)
      ** (Ecto.NoResultsError)

  """
  def get_conversation_memeber!(id), do: Repo.get!(ConversationMemeber, id)

  @doc """
  Creates a conversation_memeber.

  ## Examples

      iex> create_conversation_memeber(%{field: value})
      {:ok, %ConversationMemeber{}}

      iex> create_conversation_memeber(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_conversation_memeber(attrs \\ %{}) do
    %ConversationMemeber{}
    |> ConversationMemeber.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a conversation_memeber.

  ## Examples

      iex> update_conversation_memeber(conversation_memeber, %{field: new_value})
      {:ok, %ConversationMemeber{}}

      iex> update_conversation_memeber(conversation_memeber, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_conversation_memeber(%ConversationMemeber{} = conversation_memeber, attrs) do
    conversation_memeber
    |> ConversationMemeber.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a conversation_memeber.

  ## Examples

      iex> delete_conversation_memeber(conversation_memeber)
      {:ok, %ConversationMemeber{}}

      iex> delete_conversation_memeber(conversation_memeber)
      {:error, %Ecto.Changeset{}}

  """
  def delete_conversation_memeber(%ConversationMemeber{} = conversation_memeber) do
    Repo.delete(conversation_memeber)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking conversation_memeber changes.

  ## Examples

      iex> change_conversation_memeber(conversation_memeber)
      %Ecto.Changeset{data: %ConversationMemeber{}}

  """
  def change_conversation_memeber(%ConversationMemeber{} = conversation_memeber, attrs \\ %{}) do
    ConversationMemeber.changeset(conversation_memeber, attrs)
  end

  alias CuriousMessanger.Chat.Message

  @doc """
  Returns the list of chat_messages.

  ## Examples

      iex> list_chat_messages()
      [%Message{}, ...]

  """
  def list_chat_messages do
    Repo.all(Message)
  end

  @doc """
  Gets a single message.

  Raises `Ecto.NoResultsError` if the Message does not exist.

  ## Examples

      iex> get_message!(123)
      %Message{}

      iex> get_message!(456)
      ** (Ecto.NoResultsError)

  """
  def get_message!(id), do: Repo.get!(Message, id)

  @doc """
  Creates a message.

  ## Examples

      iex> create_message(%{field: value})
      {:ok, %Message{}}

      iex> create_message(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_message(attrs \\ %{}) do
    %Message{}
    |> Message.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a message.

  ## Examples

      iex> update_message(message, %{field: new_value})
      {:ok, %Message{}}

      iex> update_message(message, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_message(%Message{} = message, attrs) do
    message
    |> Message.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a message.

  ## Examples

      iex> delete_message(message)
      {:ok, %Message{}}

      iex> delete_message(message)
      {:error, %Ecto.Changeset{}}

  """
  def delete_message(%Message{} = message) do
    Repo.delete(message)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking message changes.

  ## Examples

      iex> change_message(message)
      %Ecto.Changeset{data: %Message{}}

  """
  def change_message(%Message{} = message, attrs \\ %{}) do
    Message.changeset(message, attrs)
  end

  alias CuriousMessanger.Chat.SeenMessage

  @doc """
  Returns the list of chat_seen_messages.

  ## Examples

      iex> list_chat_seen_messages()
      [%SeenMessage{}, ...]

  """
  def list_chat_seen_messages do
    Repo.all(SeenMessage)
  end

  @doc """
  Gets a single seen_message.

  Raises `Ecto.NoResultsError` if the Seen message does not exist.

  ## Examples

      iex> get_seen_message!(123)
      %SeenMessage{}

      iex> get_seen_message!(456)
      ** (Ecto.NoResultsError)

  """
  def get_seen_message!(id), do: Repo.get!(SeenMessage, id)

  @doc """
  Creates a seen_message.

  ## Examples

      iex> create_seen_message(%{field: value})
      {:ok, %SeenMessage{}}

      iex> create_seen_message(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_seen_message(attrs \\ %{}) do
    %SeenMessage{}
    |> SeenMessage.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a seen_message.

  ## Examples

      iex> update_seen_message(seen_message, %{field: new_value})
      {:ok, %SeenMessage{}}

      iex> update_seen_message(seen_message, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_seen_message(%SeenMessage{} = seen_message, attrs) do
    seen_message
    |> SeenMessage.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a seen_message.

  ## Examples

      iex> delete_seen_message(seen_message)
      {:ok, %SeenMessage{}}

      iex> delete_seen_message(seen_message)
      {:error, %Ecto.Changeset{}}

  """
  def delete_seen_message(%SeenMessage{} = seen_message) do
    Repo.delete(seen_message)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking seen_message changes.

  ## Examples

      iex> change_seen_message(seen_message)
      %Ecto.Changeset{data: %SeenMessage{}}

  """
  def change_seen_message(%SeenMessage{} = seen_message, attrs \\ %{}) do
    SeenMessage.changeset(seen_message, attrs)
  end
end
