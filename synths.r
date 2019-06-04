install.packages("rtweet")
library(rtweet)

synths <- search_tweets(
  "#synths", n = 5, include_rts = FALSE
)

View(synths)

write_as_csv(synths, file_name = "synths.csv", prepend_ids = TRUE, na = "", 
             fileEncoding = "UTF-8")
