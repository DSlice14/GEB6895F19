#Douglas Stigler
#Assignment 2

##############################################################
# Removed preamble that goes in testing script. 


################################################################################
# Running the tests
################################################################################

##########Function 1

multiply_two <- function(num_1, num_2) {
  num_1 * num_2
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
# Works fine, aside from indenting for style.

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
    if (i%%5 == 0) {
      
      print(i)
      # Using answer:
      answer <- c(answer, i)
      # This appends the last value, if divisible by 5.
      
    }
  }
  return(answer)
}
# Works for printing but would return a NULL value without answer variable.

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

# Works fine, with one small caveat:
# The escape sequence %s is meant for strings, not numeric values.
# For numeric variables, you would use %f, among others.
# However, R is nice enough to coerce the numbers to string before printing. 
###########################
#END
###########################
