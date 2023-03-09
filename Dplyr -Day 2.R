library(tidyverse)
library(nycflights13)


glimpse(flights)


learning_flight<- flights %>% filter(origin == "JFK", dest == "SEA")

flights %>% filter(origin == "JFK", dest == "SEA") %>% 
  summarise( mean_at = mean(air_time),
            min_at = min(air_time),
            max_at = max(air_time))


flights %>% filter( dest == "SEA") %>% 
  summarise( mean_at = mean(air_time),
             min_at = min(air_time),
             max_at = max(air_time))

my_flights %>%  
  summarise( mean_at = mean(air_time),
             min_at = min(air_time),
             max_at = max(air_time))

my_flights %>% arrange(air_time) %>%  select(origin, dest, everything())
my_flights %>% arrange(air_time) %>%  select(origin, dest)


my_flights %>% filter(dest %in% c("HOU", "IAH")) %>% 
  group_by(origin) %>% 
  summarise(avr_delay= mean(arr_delay)) %>% arrange(avr_delay)


## self working with tidyverse and dplyr to get familiar\

#Find all flights that

## Had an arrival delay of two or more hours

delay_two_hours<-filter(flights, arr_delay >= 120) #arr delay counting by minute, so more than or equal 120 is the choice
delay_two_hours  %>% select(arr_delay, year)  # select help to print out just what we need to
                                              #        see using pipe which is " %>% " 

## Flew to Houston (IAH or HOU)
dest_houston<- filter(flights, dest == "HOU")  # this line of code just find out result with one condition
filter(flights, dest %in% c("HOU", "IAH")) # in case we need more than 1 condition to seeking for
                                           # using %in% to merge all the condition in the same type in one vector
                                           # EX: destination to HOU and IAH, both are same type so 
                                           # group them into one vector to find them

filter(flights, dest == "IAH" | dest == "HOU") # using or working the same way, but way uglier 
                                               # than using vector with %in%

## Were operated by United, American, or Delta

# In the flights data set, the column carrier indicates the airline, but it uses 
# two-character carrier codes. We can find the carrier codes for the airlines in 
# the airlines data set. Since the carrier code data set only has 16 rows, and the 
# names of the airlines in that data set are not exactly “United”, “American”, or “Delta”, 
# it is easiest to manually look up their carrier codes in that data.

airlines
# The carrier code for Delta is "DL", for American is "AA", and for United is "UA". 
# Using these carriers codes, we check whether carrier is one of those.

filter(flights, carrier %in% c("DL", "AA", "UA")) %>% select(carrier, year) # go further to print out 
                                                                            # just carrier and year


##Departed in summer (July, August, and September)
# The variable month has the month, and it is numeric. So, 
# the summer flights are those that departed in months 7 (July), 8 (August), and 9 (September).

filter(flights, month >= 7, month <=9) %>% select(month, day) # month are chosen between July to September
                                                              # means the variable month >=7 and <=9

filter(flights, month %in% 7:9) %>% select(month, day) # create a range of integer from 7 to 9 for filter
c(7:9)   # this actually create a vector from 7 to 9 for filter to check with month  

filter(flights, month == 7 | month == 8 | month == 9) # work the same with ' or', 
                                                      # using between() also give the same result


##Arrived more than two hours late, but didn’t leave late

# Flights that arrived more than two hours late, but didn’t leave late 
# will have an arrival delay of more than 120 minutes (arr_delay > 120) 
# and a non-positive departure delay (dep_delay <= 0).

filter(flights, arr_delay > 120, dep_delay <= 0)

##Were delayed by at least an hour, but made up over 30 minutes in flight

# If a flight was delayed by at least an hour, then dep_delay >= 60. 
# If the flight didn’t make up any time in the air, then its 
# arrival would be delayed by the same amount as its departure, meaning dep_delay == arr_delay, 
# or alternatively, dep_delay - arr_delay == 0. 
# If it makes up over 30 minutes in the air, then the arrival delay must be at least 30 minutes 
# less than the departure delay, which is stated as dep_delay - arr_delay > 30.

filter(flights, dep_delay >= 60, dep_delay - arr_delay > 30) %>% select(dep_delay, arr_delay)

##Departed between midnight and 6 am (inclusive)

#Finding flights that departed between midnight and 6 a.m. 
# is complicated by the way in which times are represented in the data.
# In dep_time, midnight is represented by 2400, not 0. 
# You can verify this by checking the minimum and maximum of dep_time.

summary(flights$dep_time)

# This is an example of why it is always good to check the summary statistics of your data. 
# Unfortunately, this means we cannot simply check that dep_time < 600, 
# because we also have to consider the special case of midnight.
filter(flights, dep_time %in% c(600,2400)) # this just a test, not the answer





### The expression between(x, left, right) is equivalent to x >= left & x <= right.

#Of the answers in the previous question, we could simplify the statement of departed 
# in summer (month >= 7 & month <= 9) using the between() function.

filter(flights, between(month, 7,9))
