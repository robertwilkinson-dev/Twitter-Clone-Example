defmodule TwitterDemo.TweetsTest do
  use TwitterDemo.DataCase

  alias TwitterDemo.Tweets

  describe "tweets" do
    alias TwitterDemo.Tweets.Tweet

    import TwitterDemo.TweetsFixtures

    @invalid_attrs %{content: nil, created_at: nil}

    test "list_tweets/0 returns all tweets" do
      tweet = tweet_fixture()
      assert Tweets.list_tweets() == [tweet]
    end

    test "get_tweet!/1 returns the tweet with given id" do
      tweet = tweet_fixture()
      assert Tweets.get_tweet!(tweet.id) == tweet
    end

    test "create_tweet/1 with valid data creates a tweet" do
      valid_attrs = %{content: "some content", created_at: ~U[2024-03-12 14:05:00Z]}

      assert {:ok, %Tweet{} = tweet} = Tweets.create_tweet(valid_attrs)
      assert tweet.content == "some content"
      assert tweet.created_at == ~U[2024-03-12 14:05:00Z]
    end

    test "create_tweet/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Tweets.create_tweet(@invalid_attrs)
    end

    test "update_tweet/2 with valid data updates the tweet" do
      tweet = tweet_fixture()
      update_attrs = %{content: "some updated content", created_at: ~U[2024-03-13 14:05:00Z]}

      assert {:ok, %Tweet{} = tweet} = Tweets.update_tweet(tweet, update_attrs)
      assert tweet.content == "some updated content"
      assert tweet.created_at == ~U[2024-03-13 14:05:00Z]
    end

    test "update_tweet/2 with invalid data returns error changeset" do
      tweet = tweet_fixture()
      assert {:error, %Ecto.Changeset{}} = Tweets.update_tweet(tweet, @invalid_attrs)
      assert tweet == Tweets.get_tweet!(tweet.id)
    end

    test "delete_tweet/1 deletes the tweet" do
      tweet = tweet_fixture()
      assert {:ok, %Tweet{}} = Tweets.delete_tweet(tweet)
      assert_raise Ecto.NoResultsError, fn -> Tweets.get_tweet!(tweet.id) end
    end

    test "change_tweet/1 returns a tweet changeset" do
      tweet = tweet_fixture()
      assert %Ecto.Changeset{} = Tweets.change_tweet(tweet)
    end
  end
end
