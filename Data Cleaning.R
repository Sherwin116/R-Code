

#install.packages("tidyverse")
library(tidyverse)
View(starwars)

#Variable types

glimpse(starwars)
class(starwars$gender)
unique(starwars$gender)

starwars$gender <- as.factor(starwars$gender)
class(starwars$gender)

levels(starwars$gender)

starwars$gender <- factor((starwars$gender), 
                          levels = c("masculine", "feminine"))

levels(starwars$gender)

# Select variables

names(starwars)

# Shift + Ctrl + M ; shortcut for %>%

starwars %>%
  select(name, height, ends_with("color")) %>% 
  filter(hair_color %in% c("blond", "brown") &
           height < 180)

# Missing data

mean(starwars$height, na.rm = TRUE)

starwars %>% 
  select(name, gender, hair_color, height)

starwars %>% 
  select(name, gender, hair_color, height) %>% 
  na.omit()

starwars %>% 
  select(name, gender, hair_color, height) %>%
  filter(!complete.cases(.))

starwars %>% 
  select(name, gender, hair_color, height) %>%
  filter(!complete.cases(.)) %>% 
  drop_na(height) %>% 
  View()

starwars %>% 
  select(name, gender, hair_color, height) %>%
  filter(!complete.cases(.)) %>% 
  mutate(hair_color = replace_na(hair_color, "none"))

#Duplicates

Names <- c("Peter", "John", "Andrew", "Peter")
Age <- c(22, 33, 44, 22)

friends <- data.frame(Names, Age)
duplicated(friends)

friends[!duplicated(friends), ]

friends %>% 
  distinct() %>% 
  View()

# Recoding variables
starwars %>% select(name, gender)

starwars %>% 
  select(name, gender) %>% 
  mutate(gender = recode(gender, 
                         "masculine" = 1,
                         "feminine" = 2)) %>% 
  View()








































  
  
  
  
  
  