# Exploring Data in R Programming  

library(tidyverse)
data()

?starwars
dim(starwars)
str(starwars)
glimpse(starwars)
View(starwars)
head(starwars)
tail(starwars)
starwars$name

?attach
attach(starwars)

names(starwars)
length(starwars)
unique(starwars)

barplot(sort(table(hair_color), decreasing = TRUE))
          


starwars %>%
  select(hair_color) %>%
  count(hair_color) %>%
  arrange(desc(n)) %>%
  View()

  starwars[is.na(hair_color), ]

  View(starwars[is.na(hair_color), ])

  is.na(hair_color)
  
  class(height)
  length(height)
  summary(height)
  boxplot(height)
  hist(height)



















