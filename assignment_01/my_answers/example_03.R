#Doug Stigler 
#Assignment 1  
#Example 3

#############################################
## Ask user to enter a number. If number between 0 and 10, then print blue. If number between 10 and 20, print red. 
## If number between 20 and 30, print green. If other, print "Not a correct color option."

num_in <- readline(prompt="Enter a number:   ")

#between
if (between(x, 1, 10)){
  print("Blue")
} else if (10 < num_in <= 20 ){
  print("Red")
  } else if (20 < num_in <= 30 ){
    print("Green")
  } else {
    print("Not a correct color option")
  }
  


#end



