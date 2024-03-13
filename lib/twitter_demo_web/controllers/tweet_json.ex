defmodule TwitterDemoWeb.TweetJSON do
  alias TwitterDemo.Tweets.Tweet

  @doc """
  Renders a list of tweets.
  """
  def index(%{tweets: tweets}) do
    %{data: for(tweet <- tweets, do: data(tweet))}
  end

  @doc """
  Renders a single tweet.
  """
  def show(%{tweet: tweet}) do
    %{data: data(tweet)}
  end

  defp data(%Tweet{} = tweet) do
    %{
      id: tweet.id,
      content: tweet.content,
      created_at: tweet.created_at
    }
  end
end
