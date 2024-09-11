defmodule CuriousMessanger.ChatTest do
  use CuriousMessanger.DataCase

  alias CuriousMessanger.Chat

  describe "chat_conversation" do
    alias CuriousMessanger.Chat.Conversation

    import CuriousMessanger.ChatFixtures

    @invalid_attrs %{title: nil}

    test "list_chat_conversation/0 returns all chat_conversation" do
      conversation = conversation_fixture()
      assert Chat.list_chat_conversation() == [conversation]
    end

    test "get_conversation!/1 returns the conversation with given id" do
      conversation = conversation_fixture()
      assert Chat.get_conversation!(conversation.id) == conversation
    end

    test "create_conversation/1 with valid data creates a conversation" do
      valid_attrs = %{title: "some title"}

      assert {:ok, %Conversation{} = conversation} = Chat.create_conversation(valid_attrs)
      assert conversation.title == "some title"
    end

    test "create_conversation/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Chat.create_conversation(@invalid_attrs)
    end

    test "update_conversation/2 with valid data updates the conversation" do
      conversation = conversation_fixture()
      update_attrs = %{title: "some updated title"}

      assert {:ok, %Conversation{} = conversation} = Chat.update_conversation(conversation, update_attrs)
      assert conversation.title == "some updated title"
    end

    test "update_conversation/2 with invalid data returns error changeset" do
      conversation = conversation_fixture()
      assert {:error, %Ecto.Changeset{}} = Chat.update_conversation(conversation, @invalid_attrs)
      assert conversation == Chat.get_conversation!(conversation.id)
    end

    test "delete_conversation/1 deletes the conversation" do
      conversation = conversation_fixture()
      assert {:ok, %Conversation{}} = Chat.delete_conversation(conversation)
      assert_raise Ecto.NoResultsError, fn -> Chat.get_conversation!(conversation.id) end
    end

    test "change_conversation/1 returns a conversation changeset" do
      conversation = conversation_fixture()
      assert %Ecto.Changeset{} = Chat.change_conversation(conversation)
    end
  end

  describe "chat_conversation_member" do
    alias CuriousMessanger.Chat.ConversationMemeber

    import CuriousMessanger.ChatFixtures

    @invalid_attrs %{owner: nil}

    test "list_chat_conversation_member/0 returns all chat_conversation_member" do
      conversation_memeber = conversation_memeber_fixture()
      assert Chat.list_chat_conversation_member() == [conversation_memeber]
    end

    test "get_conversation_memeber!/1 returns the conversation_memeber with given id" do
      conversation_memeber = conversation_memeber_fixture()
      assert Chat.get_conversation_memeber!(conversation_memeber.id) == conversation_memeber
    end

    test "create_conversation_memeber/1 with valid data creates a conversation_memeber" do
      valid_attrs = %{owner: true}

      assert {:ok, %ConversationMemeber{} = conversation_memeber} = Chat.create_conversation_memeber(valid_attrs)
      assert conversation_memeber.owner == true
    end

    test "create_conversation_memeber/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Chat.create_conversation_memeber(@invalid_attrs)
    end

    test "update_conversation_memeber/2 with valid data updates the conversation_memeber" do
      conversation_memeber = conversation_memeber_fixture()
      update_attrs = %{owner: false}

      assert {:ok, %ConversationMemeber{} = conversation_memeber} = Chat.update_conversation_memeber(conversation_memeber, update_attrs)
      assert conversation_memeber.owner == false
    end

    test "update_conversation_memeber/2 with invalid data returns error changeset" do
      conversation_memeber = conversation_memeber_fixture()
      assert {:error, %Ecto.Changeset{}} = Chat.update_conversation_memeber(conversation_memeber, @invalid_attrs)
      assert conversation_memeber == Chat.get_conversation_memeber!(conversation_memeber.id)
    end

    test "delete_conversation_memeber/1 deletes the conversation_memeber" do
      conversation_memeber = conversation_memeber_fixture()
      assert {:ok, %ConversationMemeber{}} = Chat.delete_conversation_memeber(conversation_memeber)
      assert_raise Ecto.NoResultsError, fn -> Chat.get_conversation_memeber!(conversation_memeber.id) end
    end

    test "change_conversation_memeber/1 returns a conversation_memeber changeset" do
      conversation_memeber = conversation_memeber_fixture()
      assert %Ecto.Changeset{} = Chat.change_conversation_memeber(conversation_memeber)
    end
  end

  describe "chat_messages" do
    alias CuriousMessanger.Chat.Message

    import CuriousMessanger.ChatFixtures

    @invalid_attrs %{content: nil}

    test "list_chat_messages/0 returns all chat_messages" do
      message = message_fixture()
      assert Chat.list_chat_messages() == [message]
    end

    test "get_message!/1 returns the message with given id" do
      message = message_fixture()
      assert Chat.get_message!(message.id) == message
    end

    test "create_message/1 with valid data creates a message" do
      valid_attrs = %{content: "some content"}

      assert {:ok, %Message{} = message} = Chat.create_message(valid_attrs)
      assert message.content == "some content"
    end

    test "create_message/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Chat.create_message(@invalid_attrs)
    end

    test "update_message/2 with valid data updates the message" do
      message = message_fixture()
      update_attrs = %{content: "some updated content"}

      assert {:ok, %Message{} = message} = Chat.update_message(message, update_attrs)
      assert message.content == "some updated content"
    end

    test "update_message/2 with invalid data returns error changeset" do
      message = message_fixture()
      assert {:error, %Ecto.Changeset{}} = Chat.update_message(message, @invalid_attrs)
      assert message == Chat.get_message!(message.id)
    end

    test "delete_message/1 deletes the message" do
      message = message_fixture()
      assert {:ok, %Message{}} = Chat.delete_message(message)
      assert_raise Ecto.NoResultsError, fn -> Chat.get_message!(message.id) end
    end

    test "change_message/1 returns a message changeset" do
      message = message_fixture()
      assert %Ecto.Changeset{} = Chat.change_message(message)
    end
  end

  describe "chat_seen_messages" do
    alias CuriousMessanger.Chat.SeenMessage

    import CuriousMessanger.ChatFixtures

    @invalid_attrs %{}

    test "list_chat_seen_messages/0 returns all chat_seen_messages" do
      seen_message = seen_message_fixture()
      assert Chat.list_chat_seen_messages() == [seen_message]
    end

    test "get_seen_message!/1 returns the seen_message with given id" do
      seen_message = seen_message_fixture()
      assert Chat.get_seen_message!(seen_message.id) == seen_message
    end

    test "create_seen_message/1 with valid data creates a seen_message" do
      valid_attrs = %{}

      assert {:ok, %SeenMessage{} = seen_message} = Chat.create_seen_message(valid_attrs)
    end

    test "create_seen_message/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Chat.create_seen_message(@invalid_attrs)
    end

    test "update_seen_message/2 with valid data updates the seen_message" do
      seen_message = seen_message_fixture()
      update_attrs = %{}

      assert {:ok, %SeenMessage{} = seen_message} = Chat.update_seen_message(seen_message, update_attrs)
    end

    test "update_seen_message/2 with invalid data returns error changeset" do
      seen_message = seen_message_fixture()
      assert {:error, %Ecto.Changeset{}} = Chat.update_seen_message(seen_message, @invalid_attrs)
      assert seen_message == Chat.get_seen_message!(seen_message.id)
    end

    test "delete_seen_message/1 deletes the seen_message" do
      seen_message = seen_message_fixture()
      assert {:ok, %SeenMessage{}} = Chat.delete_seen_message(seen_message)
      assert_raise Ecto.NoResultsError, fn -> Chat.get_seen_message!(seen_message.id) end
    end

    test "change_seen_message/1 returns a seen_message changeset" do
      seen_message = seen_message_fixture()
      assert %Ecto.Changeset{} = Chat.change_seen_message(seen_message)
    end
  end
end
