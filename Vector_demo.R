#using c() to make vector
#trying vector of string

nhan<- c("fat", "ugly", "funny", "short")
nhan
typeof(nhan)

#vector: all element in one vector must be a same type

#put a "L" after a number to make it integer
map <- c(3L)
map #print integer 3

#find length
length(nhan) # dai 4

# Using seq() to make a vector of numbers
die_rolls <- seq(1, 6) 
die_rolls
## [1] 1 2 3 4 5 6
# You can use a third argument to set the skip size
odds <- seq(1, 13, by = 2)
odds
## [1]  1  3  5  7  9 11 13

# Or a *different* third argument to set the length
seven_length <- seq(1,47, length.out = 7)
seven_length # Note that this gives non-integers! 


# repeat 3, 4 times
four_threes <- rep(3, 4)
four_threes

#makeing vector dem so
degree<- 360:0#vector co phan tu keo dai tu 360 toi 0
degree


#work
sample(1:6, 6, replace = F) # sample 6 time from 1 to 6

#not work
sample(1:6, 10, replace = F) # sample 10 time from 1 to 6

#work
sample(1:6, 10, replace = T) # sample 10 time from 1 to 6





# make new vectors
v1 <- rep(0,9) # a vector of 0's of length 9
v1
## [1] 0 0 0 0 0 0 0 0 0
v2 <- 1:5 # a vector from 1 to 5
v2
## [1] 1 2 3 4 5
vec <- v1 + v2 # adding them together
#vec: 1 2 3 4 5 1 2 3 4, it use v2 and repeat it

##Exe
#Use the colon operator : to create a vector n of numbers from 10:49
n<- 10:49
n

#Use the length() function to get the number of elements in n

length(n)
#Add 1 to each element in n and print the result
n+1

#Create a vector m that contains the numbers 10 to 1 (in that order), 
#in two different ways, neither of which is just typing “10, 9 , 8 …”. 
#Hint: use one of the helper functions we learned.
m<- 10:1

m<- c(10,9,8,7,6,5,4,3,2,1)

m<-seq(10, 1, by =-1)
#Subtract m FROM n. Note the recycling!
n-m


#graphing
x <- seq(-2, 2, by = 0.1) # a vector from -2 to 2
y <- x^2                 # every element of x is squared

# a basic plot of the points, type = "l" tells R to make it a line graph
plot(x, y, type = "l")# l tell the machine that the style for the graph is a line graph, otherwise it gonna be the default which is dot



#Exercises:
#Use : to make a vector of the integers from 40 to 50 called first_nums
#Use seq() to make a vector of the integers from 51 to 60 called next_nums
#Combine them using c()
#Use indexing to access the 7th number in your combined vector
#Use indexing to access the 5th to the 8th numbers in your combined vector
#Use indexing to create a new vector that contains the first 3 elements and last 3 elements of your combined vector.


first_nums<-40:50
next_nums<-seq(51,60)

num_vec<- c(first_nums,next_nums)

num_vec[7]
num_vec[5:8]

c(num_vec[1:3], num_vec[19:21])
num_vec[c(1:3,19:21)] ## hard coded answer


n<- length(num_vec)
num_vec[62]
num_vec[-6] # take  every value except the value at the position 6

num_vec[c(1:3,(n-2):n)]# will give the fist 3 and last 3, exspecially last 3 no matter what


#Exercises:
#Use the seq() function to produce a range of numbers from -5 to 10 in 0.1 increments. Store it in a variable x_range
#Create a vector sin_wave by calling the sin() function on each element in x_range.
#Use the plot() function to plot your “wave”!
  #the x vector goes in the first argument, the y vector goes in the second argument
#You’ll need to add the argument type = "l" for a line.















