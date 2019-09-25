#Doug Stigler 
#Assignment 1  
#Example 5


###############
#Part A
## Read in 5 seperate numbers.

the_five_numbers <- seq(1,5,by=1)

###############
#Part B
## Find average of the 5 seperate numbers.

avg <- mean(the_five_numbers)

###############
#Part C
## Find max and min of the 5 seperate numbers.

max <- max(the_five_numbers)
min <- min(the_five_numbers)

###############
#Part D
## Write message printing answers from B and C with Description of the results.

sprintf("For the series of five numbers the max is %s, the min is %s, and the average is %s", max, min, avg)

#end