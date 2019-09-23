#Doug Stigler 
#Assignment 1  
#Example 4

##Print all multiples of 5 between 1 and n (include n if true)

n <- readline(prompt="Enter a number:   ")

answer <- 0
for (i in 1:n) {
  if (i%%5 == 0) 
   print(i)
}


#end