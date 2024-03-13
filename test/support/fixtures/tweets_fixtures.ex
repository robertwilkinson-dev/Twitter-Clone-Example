defmodule TwitterDemo.TweetsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `TwitterDemo.Tweets` context.
  """

  @doc """
  Generate a tweet.
  """
  def tweet_fixture(attrs \\ %{}) do
    {:ok, tweet} =
      attrs
      |> Enum.into(%{
        content: "some content",
        created_at: ~U[2024-03-12 14:05:00Z]
      })
      |> TwitterDemo.Tweets.create_tweet()

    tweet
  end

  @doc """
  Generate a tweet.
  """
  def tweet_fixture(attrs \\ %{}) do
    {:ok, tweet} =
      attrs
      |> Enum.into(%{
        content: "some content",
        created_at: ~U[2024-03-12 16:31:00Z]
      })
      |> TwitterDemo.Tweets.create_tweet()

    tweet
  end

  @doc """
  Generate a tweet.
  """
  def tweet_fixture(attrs \\ %{}) do
    {:ok, tweet} =
      attrs
      |> Enum.into(%{
        content: "some content"
      })
      |> TwitterDemo.Tweets.create_tweet()

    tweet
  end
end
