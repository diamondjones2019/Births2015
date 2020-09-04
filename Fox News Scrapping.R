library(rvest)
FOXNEWS <- read_html("https://www.foxnews.com/politics/biden-endorsements-law-enforcement")

FOXNEWS %>%
  html_nodes("title") %>%
  html_text()

FOXNEWS %>%
  html_node("p") %>%
  html_text()

FOXNEWS_articles <- read_html("https://www.foxnews.com/")

urls <- FOXNEWS_articles %>%
  html_nodes("div.searchresult a") %>%
  html_attr("href")

urls

datetime <- FOXNEWS_articles %>%
  html_nodes("div.deemphasized span") %>%
  html_text()

datetime
