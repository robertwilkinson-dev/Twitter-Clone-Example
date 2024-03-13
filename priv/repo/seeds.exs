# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     TwitterDemo.Repo.insert!(%TwitterDemo.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

TwitterDemo.Repo.insert!(%TwitterDemo.Accounts.User{
  first_name: "John",
  last_name: "Doe",
  full_name: "John Doe",
  profile_image: "https://pbs.twimg.com/profile_images/736392853992001537/eF4LJLkn_400x400.jpg",
})

TwitterDemo.Repo.insert!(%TwitterDemo.Accounts.User{
  first_name: "Sigma",
  last_name: "Obama",
  full_name: "Sigma Obama",
  profile_image: "https://pbs.twimg.com/profile_images/600314410003865600/laIuu4bB_400x400.jpg",
})

TwitterDemo.Repo.insert!(%TwitterDemo.Accounts.User{
  first_name: "Sleepy",
  last_name: "Joe",
  full_name: "Sleepy Joe",
  profile_image: "https://www.aljazeera.com/wp-content/uploads/2024/02/Dark_Brandon-1707733252-e1707733487654.jpg?resize=770%2C513&quality=80",
})

TwitterDemo.Repo.insert!(%TwitterDemo.Tweets.Tweet{
  author_id: 2,
  content: "im not lying when i say i own a $50000,000,000 hedge fund that mines asteroids for gold. i simply haven't told anyone yet",
})

TwitterDemo.Repo.insert!(%TwitterDemo.Tweets.Tweet{
  author_id: 1,
  content: "The world is flat! I have proof! #flatearth",
})

TwitterDemo.Repo.insert!(%TwitterDemo.Tweets.Tweet{
  author_id: 3,
  content: "Donald's hair is fake. #fakenews"
})

TwitterDemo.Repo.insert!(%TwitterDemo.Tweets.Tweet{
  author_id: 2,
  content: "I'm the real Sigma Obama. The other one is a fake. #imtherealsigmaobama",
})

TwitterDemo.Repo.insert!(%TwitterDemo.Tweets.Tweet{
  author_id: 1,
  content: "im gonna start a business selling Ketchup of Sadness",
})

TwitterDemo.Repo.insert!(%TwitterDemo.Tweets.Tweet{
  author_id: 2,
  content: "I dreamt of being eaten by a whale last night. #whaleofadream",
})

TwitterDemo.Repo.insert!(%TwitterDemo.Tweets.Tweet{
  author_id: 2,
  content: "So, I have 3 things to say to the youtube community. 1. I'm sorry. 2. I'm sorry. 3. I'm sorry. #youtuber",
})

TwitterDemo.Repo.insert!(%TwitterDemo.Tweets.Tweet{
  author_id: 3,
  content: "I play Pot of Greed. This allows me to draw two cards from my deck. #yugioh #potofgreed",
})
