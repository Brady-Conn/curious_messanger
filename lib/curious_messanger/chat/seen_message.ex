defmodule CuriousMessanger.Chat.SeenMessage do
  use Ecto.Schema
  import Ecto.Changeset

  schema "chat_seen_messages" do

    belongs_to :user, User
    belongs_to :message, Message

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(seen_message, attrs) do
    seen_message
    |> cast(attrs, [:user_id, :message_id])
    |> validate_required([:user_id, :message_id])
  end
end
