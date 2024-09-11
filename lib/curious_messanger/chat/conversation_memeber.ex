defmodule CuriousMessanger.Chat.ConversationMemeber do
  use Ecto.Schema
  import Ecto.Changeset

  schema "chat_conversation_member" do
    field :owner, :boolean, default: false

    belongs_to :user, User
    belongs_to :conversation, Conversation

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(conversation_memeber, attrs) do
    conversation_memeber
    |> cast(attrs, [:owner, :conversation_id, :user_id])
    |> validate_required([:owner, :conversation_id, :user_id])
    |> unique_constraint(:user, name: :chat_conversation_members_conversation_id_user_id_index)
    |> unique_constraint(:conversation_id,
      name: :chat_conversation_members_owner
    )
  end
end
