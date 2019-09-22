#Doug Stigler 
#Assignment 1  
#Example 4

##Print all multiples of 5 between 1 and n (include n if true)


n <- 10
for(i in 1:n) {
  
  
  total <-  i % 5
  
  print(sprintf('Completed iteration %d', i))
}


#end