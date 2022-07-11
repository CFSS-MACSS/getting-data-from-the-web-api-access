library(tidyverse)
library(tidyverse)
library(rtweet)

# interactively enter bearer token provided in class
auth <- rtweet_app()

# use as the default token
auth_save(auth = auth, name = "cfss")
auth_as("cfss")

# Find the 1000 most recent tweets by
## Katy Perry (https://twitter.com/katyperry)
## Kim Kardashian West (https://twitter.com/KimKardashian)
## Rihanna (https://twitter.com/rihanna)


# Visualize their tweet frequency by week

