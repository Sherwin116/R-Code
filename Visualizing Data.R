# Visualizing data

library(tidyverse)

install.packages('gapminder')
library(gapminder)
View(gapminder)

gapminder %>% 
  filter(continent %in% c("Africa", "Europe")) %>% 
  filter(gdpPercap < 30000) %>% 
  ggplot(aes(x=gdpPercap,
             y = lifeExp,
             size = pop,
             color = year))+
  geom_point()+
  facet_wrap(~continent)+
  labs(title = "Life expectancy explained by GDP",
       x = "GDP per capita",
       y = "Life expectancy")
