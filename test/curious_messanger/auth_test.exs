defmodule CuriousMessanger.AuthTest do
  use CuriousMessanger.DataCase

  alias CuriousMessanger.Auth

  describe "auth_user" do
    alias CuriousMessanger.Auth.User

    import CuriousMessanger.AuthFixtures

    @invalid_attrs %{nickname: nil}

    test "list_auth_user/0 returns all auth_user" do
      user = user_fixture()
      assert Auth.list_auth_user() == [user]
    end

    test "get_user!/1 returns the user with given id" do
      user = user_fixture()
      assert Auth.get_user!(user.id) == user
    end

    test "create_user/1 with valid data creates a user" do
      valid_attrs = %{nickname: "some nickname"}

      assert {:ok, %User{} = user} = Auth.create_user(valid_attrs)
      assert user.nickname == "some nickname"
    end

    test "create_user/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Auth.create_user(@invalid_attrs)
    end

    test "update_user/2 with valid data updates the user" do
      user = user_fixture()
      update_attrs = %{nickname: "some updated nickname"}

      assert {:ok, %User{} = user} = Auth.update_user(user, update_attrs)
      assert user.nickname == "some updated nickname"
    end

    test "update_user/2 with invalid data returns error changeset" do
      user = user_fixture()
      assert {:error, %Ecto.Changeset{}} = Auth.update_user(user, @invalid_attrs)
      assert user == Auth.get_user!(user.id)
    end

    test "delete_user/1 deletes the user" do
      user = user_fixture()
      assert {:ok, %User{}} = Auth.delete_user(user)
      assert_raise Ecto.NoResultsError, fn -> Auth.get_user!(user.id) end
    end

    test "change_user/1 returns a user changeset" do
      user = user_fixture()
      assert %Ecto.Changeset{} = Auth.change_user(user)
    end
  end
end
