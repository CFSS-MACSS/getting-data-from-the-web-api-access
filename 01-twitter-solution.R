library(tidyverse)
library(rtweet)

# interactively enter bearer token provided in class
auth <- rtweet_app()

# save and use as the default token
auth_save(auth = auth, name = "cis")
auth_as("cis")

# Find the 1000 most recent tweets by
# Sesame Street
# - Count Von Count (https://twitter.com/CountVonCount)
# - Big Bird (https://twitter.com/BigBird)
# - Elmo (https://twitter.com/elmo)
# - Cookie Monster (https://twitter.com/MeCookieMonster)

# The Muppets
# - Kermit the Frog (https://twitter.com/KermitTheFrog)
# - Miss Piggy (https://twitter.com/MissPiggy)
# - Statler and Waldorf (https://twitter.com/StatlerWaldorf)
# - Fozzie Bear (https://twitter.com/FozzieBear)

# define screennames with source info
characters <- tribble(
  ~program, ~screen_name,
  "Sesame Street", "CountVonCount",
  "Sesame Street", "BigBird",
  "Sesame Street", "Elmo",
  "Sesame Street", "MeCookieMonster",
  "The Muppets", "KermitTheFrog",
  "The Muppets", "MissPiggy",
  "The Muppets", "StatlerWaldorf",
  "The Muppets", "FozzieBear"
)

# get timelines
timelines <- get_timeline(characters$screen_name, n = 1000)

# combine user data to recover screennames
users_timelines <- users_data(timelines)

# combine timelines with user data, group by character, and plot weekly tweet frequency
users_timelines %>%
  select(name, screen_name) %>%
  bind_cols(timelines) %>%
  # connect screen_name to program of origin
  left_join(characters) %>%
  group_by(screen_name, program) %>%
  ts_plot(by = "months")
