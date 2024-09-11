defmodule CuriousMessanger.Repo.Migrations.CreateChatConversation do
  use Ecto.Migration

  def change do
    create table(:chat_conversation) do
      add :title, :string, null: false

      timestamps(type: :utc_datetime)
    end
  end
end
