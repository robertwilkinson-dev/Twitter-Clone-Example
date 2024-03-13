defmodule TwitterDemoWeb.TweetController do
  use TwitterDemoWeb, :controller

  alias TwitterDemo.Tweets
  alias TwitterDemo.Tweets.Tweet

  action_fallback TwitterDemoWeb.FallbackController

  def index(conn, _params) do
    tweets = Tweets.list_tweets()
    render(conn, :index, tweets: tweets)
  end

  def create(conn, %{"tweet" => tweet_params}) do
    with {:ok, %Tweet{} = tweet} <- Tweets.create_tweet(tweet_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", ~p"/api/tweets/#{tweet}")
      |> render(:show, tweet: tweet)
    end
  end

  def show(conn, %{"id" => id}) do
    tweet = Tweets.get_tweet!(id)
    render(conn, :show, tweet: tweet)
  end

  def update(conn, %{"id" => id, "tweet" => tweet_params}) do
    tweet = Tweets.get_tweet!(id)

    with {:ok, %Tweet{} = tweet} <- Tweets.update_tweet(tweet, tweet_params) do
      render(conn, :show, tweet: tweet)
    end
  end

  def delete(conn, %{"id" => id}) do
    tweet = Tweets.get_tweet!(id)

    with {:ok, %Tweet{}} <- Tweets.delete_tweet(tweet) do
      send_resp(conn, :no_content, "")
    end
  end
end
