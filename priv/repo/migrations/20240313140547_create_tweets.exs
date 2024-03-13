defmodule TwitterDemo.Repo.Migrations.CreateTweets do
  use Ecto.Migration

  def change do
    create table(:tweets) do
      add :content, :string
      add :created_at, :utc_datetime
      add :author, references(:users, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:tweets, [:author])
  end
end
