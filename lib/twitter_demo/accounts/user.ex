defmodule TwitterDemo.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :first_name, :string
    field :last_name, :string
    field :full_name, :string
    field :profile_image, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:first_name, :last_name, :full_name, :profile_image])
    |> validate_required([:first_name, :last_name, :full_name, :profile_image])
  end
end
