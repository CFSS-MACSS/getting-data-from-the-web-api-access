library(tidyverse)
library(tidyverse)
library(rtweet)

# interactively enter bearer token provided in class
# see https://github.coecis.cornell.edu/orgs/cis-fa22/discussions/47
auth <- rtweet_app()

# use as the default token
auth_save(auth = auth, name = "cis")
auth_as("cis")

# Find the 1000 most recent tweets by
# - Count Von Count (https://twitter.com/CountVonCount)
# - Big Bird (https://twitter.com/BigBird)
# - Elmo (https://twitter.com/elmo)
# - Cookie Monster (https://twitter.com/MeCookieMonster)

# define screennames with source info
sesame_street <- ________

# get timelines
timelines <- ________(user = ________, n = 1000)

# combine user data to recover screennames
users_timelines <- ________(timelines)

# combine timelines with user data, group by character, and plot weekly tweet frequency
users_timelines %>%
  select(name, screen_name) %>%
  bind_cols(timelines) %>%
  group_by(screen_name) %>%
  ts_plot(by = "months")
