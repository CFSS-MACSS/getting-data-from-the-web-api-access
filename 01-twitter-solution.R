library(tidyverse)
library(rtweet)

# interactively enter bearer token provided in class
auth <- rtweet_app()

# save and use as the default token
auth_save(auth = auth, name = "cis")
auth_as("cis")

# Find the 1000 most recent tweets by
## Katy Perry (https://twitter.com/katyperry)
## Kim Kardashian (https://twitter.com/KimKardashian)
## Rihanna (https://twitter.com/rihanna)
katy_perry <- get_timeline(
  user = "katyperry",
  n = 1000
)

kim_kardashian <- get_timeline(
  user = "KimKardashian",
  n = 1000
)

rihanna <- get_timeline(
  user = "rihanna",
  n = 1000
)

# combine, group by character, and plot weekly tweet frequency
bind_rows(
  `Katy Perry` = katy_perry %>% select(created_at),
  `Kim Kardashian` = kim_kardashian %>% select(created_at),
  `Rihanna` = rihanna %>% select(created_at),
  .id = "screen_name"
) %>%
  group_by(screen_name) %>%
  ts_plot(by = "months")
