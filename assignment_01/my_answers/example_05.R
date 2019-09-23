#Doug Stigler 
#Assignment 1  
#Example 5

##Count all even numbers to a user defined stopping point.


num_stop <- readline(prompt="Enter a stopping point:   ")


count <- 0
for (i in 1:num_stop) {
  if (i%%2 == 0) 
    count <- count + 1
}

print (count)

#end