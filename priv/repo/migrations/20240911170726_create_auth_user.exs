defmodule CuriousMessanger.Repo.Migrations.CreateAuthUser do
  use Ecto.Migration

  def change do
    create table(:auth_user) do
      add :nickname, :string

      timestamps(type: :utc_datetime)
    end
  end
end
