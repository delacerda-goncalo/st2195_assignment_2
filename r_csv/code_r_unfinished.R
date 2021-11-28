library("rvest")
library(XML)

# We start by assigning the reading the HTML from the entire page and assigning it to wikipedia_html.

wikipedia_html <- read_html("https://en.wikipedia.org/wiki/Comma-separated_values")

#Using Xpath and html_nodes, we identify the table in the wikipedia page and assign its tags to example_table

example_table_tags <- html_nodes(wikipedia_html, xpath="//pre[(((count(preceding-sibling::*) + 1) = 56) and parent::*)]")

#We can now access the table using html_table, and assign it to example_table.

example_table <- html_table(example_table_tags[1])
