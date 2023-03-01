# In Class "Lab" - Intro to R and Functions
# Data 2041


### PART ONE ####
# Assign your name to a variable called `my_name`
my_name <- print("Nhan Nguyen")

# Assign the number of pets you have to a variable called `num_pets`
assign( "num_pets", 3)
print(num_pets)

# Assign the title of your favorite book as a variable called `favorite_book`
favorite_book<- print(" 20,000 Leagues Under the Sea ")

# Create a variable called `radius`, which is your favorite number
assign("radius", 67)
print(radius)

# Create a variable called `area`, which is the area of a circle with that radius.
# Use the variable `radius` to calculate this. 
# Use the built-in constant `pi` for pi.
area <- pi*(radius^2) #** still work to raise
print(area)

# Create a boolean variable `too_big` that is set to TRUE if the area is larger than 100
# Use a relationship operator to do this  (don't just set it to "TRUE")
# Think: how do you check if it's larger than 10? Assign that to your new variable name. 

too_big <- area > 100

bigger_than_ten <- area > 10

# Display the variable `my_name`
print(my_name)
# Display the variable `area` 
print(area)
# Display the variable `too_big`
print(too_big)


### PART TWO ###

# Create a variable `name_length` that holds how many letters (including spaces)
# are in your name, using the variable you made above. (use the `nchar()` function)
name_length <- nchar(my_name)
# Print the number of letters in your name
print (name_length)

# Create a variable `now_doing` that is your name followed by "is programming!" 
# (use the `paste()` function)
now_doing <- paste(my_name, "is programing!")
# Make the `now_doing` variable upper case
toupper(now_doing)

# Pick two of your favorite numbers (between 1 and 100) and assign them to 
# variables `fav_1` and `fav_2`
assign("fav_1", 21)
assign("fav_2", 69)
# Divide each number by the square root of 201 and save the new value in the
# original variable

fav_1<- fav_1/sqrt(201) #overide number to favorite number
fav_2<- fav_2/sqrt(201)

# Create a variable `raw_sum` that is the sum of the two variables. Use the 
# `sum()` function for practice.
raw_sum<- sum(fav_1,fav_2) 

# Create a variable `round_sum` that is the `raw_sum` rounded to 2 decimal places.
# Use the `round()` function.
round_sum <- round(raw_sum, 2)

# Create two new variables `round_1` and `round_2` that are your `fav_1` and 
# `fav_2` variables rounded to 2 decimal places

round_1<- round(fav_1, 2)
round_2<- round(fav_2, 2)
# Create a variable `sum_round` that is the sum of the rounded values

sum_round <- sum(round_1, round_2)
# Print out both variables and compare. Are they the same?

print(round_1, round_2)
sum_round == round_sum












