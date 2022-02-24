library(tidyverse)
library(rtweet)

# store authentication information
# use pre-generated tokens just for this class
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
popstars <- get_timelines(
  user = c("katyperry", "KimKardashian", "rihanna"),
  n = 1000
)

# Visualize their tweet frequency by week
popstars %>%
  group_by(screen_name) %>%
  ts_plot(by = "week")
