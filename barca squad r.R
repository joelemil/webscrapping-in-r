
library(rvest)
library(dplyr)
link <-'https://www.transfermarkt.co.in/fc-barcelona/kader/verein/131'
web <- read_html(link)
name <- web %>% html_nodes(".hauptlink a") %>% html_text()
View(name)
age <- web %>% html_nodes(".posrela+ .zentriert") %>% html_text()
View(age)
marketvalue <- web %>% html_nodes(".rechts.hauptlink") %>% html_text()
View(marketvalue)
barca.squad <- data.frame(name,age,marketvalue)
View(barca.squad)
write.csv (barca.squad,"my barca data.csv")