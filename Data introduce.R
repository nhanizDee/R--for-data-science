mpg_data <- read.table('C:/Users/nhanf/OneDrive/Máy tính/R-code/mpg.txt')


#dat <- read.csv(
 # file = "Raid shadow legend Champion Stat.csv",
 # header = TRUE,
 # sep = ",",
 # dec = "."
#)
#dat

# copy the link from folder, change '\' to '/' , add '.txt' to read file as text file

library(tidyverse) #add library
glimpse(mpg_data) # print the data with glimpse to make it view-able to see what 
#the data set have on it in colunm and row
 #glimpse(dat)
 #hist(dat$ATK)
#Add name for row
names(mpg_data) <- c("American", "Japanese")
glimpse(mpg_data)

#working on the data set

## find the mean
ceiling(mean(mpg_data$American)) #Accessing columns, rows, or cells via $ and 
#round it to the nearest number using ceiling

# plot a diagram- this case is histogram for data
hist(mpg_data$American)

#using pivot to mix and fix data
mpg_data <- pivot_longer(data = mpg_data, 
                         cols = c("American", "Japanese"), 
                         names_to = "Type", 
                         values_to = "mpg"
             )


