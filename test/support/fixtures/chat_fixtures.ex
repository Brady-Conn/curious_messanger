defmodule CuriousMessanger.ChatFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `CuriousMessanger.Chat` context.
  """

  @doc """
  Generate a conversation.
  """
  def conversation_fixture(attrs \\ %{}) do
    {:ok, conversation} =
      attrs
      |> Enum.into(%{
        title: "some title"
      })
      |> CuriousMessanger.Chat.create_conversation()

    conversation
  end

  @doc """
  Generate a conversation_memeber.
  """
  def conversation_memeber_fixture(attrs \\ %{}) do
    {:ok, conversation_memeber} =
      attrs
      |> Enum.into(%{
        owner: true
      })
      |> CuriousMessanger.Chat.create_conversation_memeber()

    conversation_memeber
  end

  @doc """
  Generate a message.
  """
  def message_fixture(attrs \\ %{}) do
    {:ok, message} =
      attrs
      |> Enum.into(%{
        content: "some content"
      })
      |> CuriousMessanger.Chat.create_message()

    message
  end

  @doc """
  Generate a seen_message.
  """
  def seen_message_fixture(attrs \\ %{}) do
    {:ok, seen_message} =
      attrs
      |> Enum.into(%{

      })
      |> CuriousMessanger.Chat.create_seen_message()

    seen_message
  end
end
