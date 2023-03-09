# Date: Feb 28, 2023
# Tidyverse working on
library(tidyverse)
installed.packages("gapmnider")
library(gapminder)
glimpse(gapminder) # print out the data of Gapminder using str or function glimpse()

gapminder
as.data.frame(gapminder) # print out gap minder as a frame, look clearly using a Rmd file
summary(gapminder)

#making a filter for data instead of making a subset
#filter will be more useful in making data and improve the user experience working with data

filter(gapminder, country == "China")
# taking max life experience
filter( gapminder, lifeExp = max(lifeExp)) 
 #We detected a named input.
#ℹ This usually means that you've used `=` instead of `==`.
#ℹ Did you mean `lifeExp == max(lifeExp)`?
filter(gapminder, year > 1998 , continent == 'Americas')
filter(gapminder, continent == "Asia" | lifeExp == min(lifeExp))




