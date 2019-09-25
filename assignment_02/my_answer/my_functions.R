#Douglas Stigler
#Assignment 2

##############################################################
# Clear workspace.
# The remove function removes everything in the workspace when the list is all.
rm(list=ls(all=TRUE))

# Set working directory.
wd_path <- 'C:/Users/dougl/Documents/GEB6895/My_Mirror/GEB6895F19-1/assignment_02'
setwd(wd_path)

# Load library of functions.
source('my_functions_example.R')



################################################################################
# Running the tests
################################################################################

##########Function 1

multiply_two <- function(num_1, num_2) 
{num_1 * num_2
}

##########Function 2

is_it_5_or_6 <- function(num_in){
if (num_in == 5) {
  print('Number is 5 or 6')
} else if (num_in == 6) {
  print('Number is 5 or 6')
} else {
  print('Number not 5 or 6')
} 
}

##########Function 3

color_by_number <-function(num_in){
if (num_in < 0){
  print("Not a correct color option")
} else if (num_in <= 10 ){
  print("Blue")
} else if (num_in <= 20 ){
  print("Red")
} else if (num_in <= 30 ){
  print("Green")
} else {
  print("Not a correct color option")
}
}

##########Function 4

multiples_of_5 <- function(n){
answer <- 0
for (i in 1:n) {
  if (i%%5 == 0) 
    print(i)
}
}

##########Function 5

count_even_numbers <- function(end_num){
count <- 0
for (i in 1:end_num) {
  if (i%%2 == 0) 
    count <- count + 1
} 
print(count)
}

##########Function 6


summarize_5_numbers <- function(num_1, num_2, num_3, num_4, num_5){
  x <- c(num_1, num_2, num_3, num_4, num_5)
  avg <- mean(x)
  max <- max(x)
  min <- min(x)
  sprintf("For the series of five numbers the max is %s, the min is %s, and the average is %s", max, min, avg)
}

###########################
#END
###########################