defmodule CuriousMessanger.Repo.Migrations.CreateChatConversationMember do
  use Ecto.Migration

  def change do
    create table(:chat_conversation_member) do
      add :owner, :boolean, default: false, null: false
      add :conversation_id, references(:chat_conversation, on_delete: :nothing)
      add :user_id, references(:auth_user, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:chat_conversation_member, [:conversation_id])
    create index(:chat_conversation_member, [:user_id])
  end
end
