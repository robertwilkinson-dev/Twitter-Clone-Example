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
    author = TwitterDemo.Accounts.get_user!(tweet.author_id)

    %{
      id: tweet.id,
      content: tweet.content,
      created_at: tweet.inserted_at,
      updated_at: tweet.updated_at,
      author: %{
        id: author.id,
        first_name: author.first_name,
        last_name: author.last_name,
        full_name: author.full_name,
        profile_image: author.profile_image
      }
    }
  end
end
