install.packages("rtweet")
library(rtweet)

synths <- search_tweets(
  "#synths", n = 5, include_rts = FALSE
)

View(synths)

mean(synths$favorite_count)

median(synths$favorite_count)

min(synths$favorite_count)

max(synths$favorite_count)

range(synths$favorite_count)

write_as_csv(synths, file_name = "synths.csv", prepend_ids = TRUE, na = "", 
             fileEncoding = "UTF-8")
