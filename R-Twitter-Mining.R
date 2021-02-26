#Load Libraries here
library(rtweet)

# Connecting APIs - keys are in the Twitter Developer Account
api_key <- "API-KEY-HERE"
api_secret_key <- "API-SECRET-KEY-HERE"
access_token <- "ACCESS-TOKEN-HERE"
access_token_secret <- "ACCESS-TOKEN-SECRET-HERE"

token <- create_token(
  app = "NAMEOFTHEAPP",
  consumer_key = api_key,
  consumer_secret = api_secret_key,
  access_token = access_token,
  access_secret = access_token_secret)


# Collecting 10k tweets in USA using the keyword bruins
rt <- search_tweets("bruins", geocode = lookup_coords("usa"), n = 10000,  header=TRUE, token = token)
