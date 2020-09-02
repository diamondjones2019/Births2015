install.packages("rvest")
library(rvest)

reddit_web <- read_html("https://www.reddit.com/r/politics/comments/a1j9xs/partisan_election_officials_are_inherently_unfair/")

reddit_web %>%
  html_node("title") %>%
  html_text()

reddit_web %>%
  html_node("p._1qeIAgB0cPwnLhDF9XSiJM") %>%
  html_text()

time <- reddit_web %>%
  html_nodes("a._3jOxDPIQ0KaOWpzvSQo-1s") %>%
  html_text()

time

urls <- reddit_web %>%
  html_nodes("a._3jOxDPIQ0KaOWpzvSQo-1s") %>%
  html_attr("href")

urls
