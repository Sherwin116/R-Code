
# Describe and summarise

# Range / spread
# Centrality
# Variance
# Summarize your data
# Create tables

library(tidyverse)
data()
View(msleep)


# Describing the spread, centrality and variance

min(msleep$awake)
max(msleep$awake)
range(msleep$awake)
IQR(msleep$awake)
mean(msleep$awake)
median(msleep$awake)
var(msleep$awake)

# Summarizing selected variables 
summary(msleep)
summary(msleep$sleep_total)

msleep %>% 
  select(sleep_total, brainwt) %>% 
  summary

# Creating a summary table
# For each category of "Vore",
## Showing the min, max, difference
## and average "sleep_total"
## and arrange data by the average

msleep %>% 
  drop_na(vore) %>% 
  group_by(vore) %>% 
  summarise(Lower = min(sleep_total),
            Average = mean(sleep_total),
            Upper = max(sleep_total),
            Difference = 
              max(sleep_total) - min(sleep_total)) %>% 
  arrange(Average) %>% 
  View()
  
#Creating contingency tables

library(MASS)
attach(Cars93)

glimpse(Cars93)

table(Origin)
table(AirBags, Origin)
addmargins(table(AirBags, Origin),1)
prop.table(table(AirBags, Origin),2)*100
round(prop.table(table(AirBags, Origin),1)*100)

Cars93 %>% 
  group_by(Origin, AirBags) %>% 
  summarise(number = n()) %>% 
  pivot_wider(names_from = Origin,
              values_from = number)



