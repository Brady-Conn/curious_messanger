defmodule CuriousMessanger.Auth.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "auth_user" do
    field :nickname, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:nickname])
    |> validate_required([:nickname])
  end
end
