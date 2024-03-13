defmodule TwitterDemo.AccountsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `TwitterDemo.Accounts` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        first_name: "some first_name",
        full_name: "some full_name",
        last_name: "some last_name",
        profile_image: "some profile_image"
      })
      |> TwitterDemo.Accounts.create_user()

    user
  end
end
