defmodule TwitterDemo.Repo do
  use Ecto.Repo,
    otp_app: :twitter_demo,
    adapter: Ecto.Adapters.SQLite3
end
