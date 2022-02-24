library(tidyverse)
library(rtweet)

# Authenticate access to the Twitter API using the token
# provided for class today
token <- create_token(
  app = "CFSS test 2",
  consumer_key = getOption("twitter_api_key"),
  consumer_secret = getOption("twitter_api_secret_key"),
  access_token = getOption("twitter_access_token"),
  access_secret = getOption("twitter_access_token_secret")
)

# Find the 1000 most recent tweets by
## Katy Perry (https://twitter.com/katyperry)
## Kim Kardashian West (https://twitter.com/KimKardashian)
## Rihanna (https://twitter.com/rihanna)


# Visualize their tweet frequency by week

