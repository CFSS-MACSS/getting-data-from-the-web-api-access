library(tidyverse)
library(tidyverse)
library(rtweet)

# interactively enter bearer token provided in class
auth <- rtweet_app()

# use as the default token
auth_save(auth = auth, name = "cis")
auth_as("cis")

# Find the 1000 most recent tweets by
## Katy Perry (https://twitter.com/katyperry)
## Kim Kardashian (https://twitter.com/KimKardashian)
## Rihanna (https://twitter.com/rihanna)


# Visualize their tweet frequency by week

