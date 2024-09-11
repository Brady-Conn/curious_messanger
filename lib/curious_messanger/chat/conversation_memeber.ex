defmodule CuriousMessanger.Chat.ConversationMemeber do
  use Ecto.Schema
  import Ecto.Changeset

  schema "chat_conversation_member" do
    field :owner, :boolean, default: false
    field :conversation_id, :id
    field :user_id, :id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(conversation_memeber, attrs) do
    conversation_memeber
    |> cast(attrs, [:owner])
    |> validate_required([:owner])
  end
end
