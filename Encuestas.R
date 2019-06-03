library(tidyverse)
library(rvest)
url <- "https://es.wikipedia.org/wiki/Anexo:Encuestas_de_intenci%C3%B3n_de_voto_para_la_elecci%C3%B3n_presidencial_de_M%C3%A9xico_de_2018"
h <- read_html(url)
tab <- h %>% html_nodes("table")
tab <- tab[[2]]
tab <- tab %>% html_table()
tab <- tab[-1,]
head(tab)
