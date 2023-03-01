#import library

library(tidyverse)
library(palmerpenguins)
library(dplyr)

# code
# a vector of names
name <- c("Ada", "Bob", "Chris", "Daisy", "Elda")

# a vector of salaries
salary <- c(95, 82, 75, 92, 102)

# a vector of scores
score <- c(6, 4, 2, 5, 9)

#stringasFactors : define a category
# Combine into a dataframe
# The names of the variables become the names of the columns! 
people <- data.frame(name, salary, score, stringsAsFactors = F)
people

# dim is for dimention

# to get rows and columns:
nrow(people)
ncol(people)

# to get both
dim(people) # Note this returns a vector!




points_for <- c(0,2,1,2)
points_against <- c(1,0,1,0)

game<- data.frame(points_against,points_for, stringasFactor = F)
game

game$diff <- points_against - points_for
game$seven <- NULL
glimpse(game)

game$won <- game$diff<0
game$won <- game$points_for> game$points_against

names<- c("Wave", "Current", "Louivlle", "Thorns")
game$names<- names

game$names



loaded_data <- read_csv('gates_donations.csv')
loaded_data


dat <- read.csv()
  dat
readgrant<- read.csv('gates_donations.csv')

#mean
mean(readgrant$total_amount)



