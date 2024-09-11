defmodule CuriousMessanger.AuthFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `CuriousMessanger.Auth` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        nickname: "some nickname"
      })
      |> CuriousMessanger.Auth.create_user()

    user
  end
end
