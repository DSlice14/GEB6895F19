#Doug Stigler 
#Assignment 1  
#Example 5

##Count all even numbers to a user defined stopping point.


num_in <- readline(prompt="Enter a stopping point:   ")

for (i in 1:num_in) {
  if(numbers[i] %% 2 == 0) total[i] <- 1
}


#end