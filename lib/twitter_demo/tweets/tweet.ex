defmodule TwitterDemo.Tweets.Tweet do
  use Ecto.Schema
  import Ecto.Changeset

  schema "tweets" do
    field :content, :string
    field :created_at, :utc_datetime
    field :author, :id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(tweet, attrs) do
    tweet
    |> cast(attrs, [:content, :created_at])
    |> validate_required([:content, :created_at])
  end
end
