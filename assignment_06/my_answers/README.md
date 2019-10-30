# Comments:

Please see the comments in your script. In one function, the return statement causes the program to break early and return zero every time.

# Results from testing script:

```python
"""
##################################################
# 
#Douglas Stigler
#Assignment 6
# GEB 6895: Tools for Business Intelligence
# 
# Sample program for writing and testing functions
# 
# Lealand Morin, Ph.D.
# Assistant Professor
# Department of Economics
# College of Business Administration
# University of Central Florida
# 
# October 3, 2019
# 
# This script is an example that defines a set of functions and 
# tests the functions with a number of test cases in the main function. 
# 
# Please use exactly the same function names 
# and the same number and order of arguments. 
# 
##################################################
"""


##################################################
# Import Modules.
##################################################

#none needed

##################################################
# Functions.
##################################################


#--------------------------------------------------
# a) multiply_two
#--------------------------------------------------

def multiply_two(num_1, num_2):
    
    name_of_output = num_1 * num_2
    
    return name_of_output





#--------------------------------------------------
# b) is_it_5_or_6
#--------------------------------------------------

def is_it_5_or_6(num_in):
    
    if num_in == 5:
        return "it is 5 or 6, 5 in this case"
    elif num_in == 6 :
        return "it is 5 or 6, 6 in this case"
    else:
        return "The number is not 5 or 6"



#--------------------------------------------------
# c) color_by_number
#--------------------------------------------------

def color_by_number(num_in):
     
     if 0 <= num_in <= 10:
        return "Blue"
     elif 10 < num_in <= 20:
        return "Red"
     elif 20 < num_in <= 30:
        return "Green"
     else:
        return "This is not a correct color option"





#--------------------------------------------------
# d) multiples_of_5
#--------------------------------------------------

def multiples_of_5(n):
    
    for i in range(0,n):
        if i%5 == 0 :
            return(i)



#--------------------------------------------------
# e) count_even_numbers
#--------------------------------------------------

def count_even_numbers(end_num):
    
    count = 1
    for i in range(0,end_num):
        if i%2 == 0 :
            count = count + 1
    return(count)





#--------------------------------------------------
# f) summarize_5_numbers
#--------------------------------------------------

def summarize_5_numbers(num_1, num_2, num_3, num_4, num_5):
    
    avg5 = (num_1 + num_2 + num_3 + num_4 + num_5)/5
    min5 = min(num_1, num_2, num_3, num_4, num_5)
    max5 = max(num_1, num_2, num_3, num_4, num_5)
    
    print "The average of the 5 numbers is",avg5,", the max is",max5,", and the minimum of the numbers is", min5
    
    
    return avg5,min5,max5




##################################################
# Test Cases.
##################################################


def main():
    
    
    #--------------------------------------------------
    # a) multiply_two
    #--------------------------------------------------
    
    print multiply_two(5, 7)
    print multiply_two(99, 1)
    print multiply_two(10, 10)
    print multiply_two(1, 1)
    
    #--------------------------------------------------
    # b) is_it_5_or_6
    #--------------------------------------------------
    
    print is_it_5_or_6(4)
    print is_it_5_or_6(5)
    print is_it_5_or_6(6)
    print is_it_5_or_6(100) 
    
    #--------------------------------------------------
    # c) color_by_number
    #--------------------------------------------------
    
    
    print color_by_number(10)
    print color_by_number(-3)
    print color_by_number(25)
    print color_by_number(29)
    
    #--------------------------------------------------
    # d) multiples_of_5
    #--------------------------------------------------
    
    print multiples_of_5(2)
    print multiples_of_5(17)
    print multiples_of_5(20)
    
    #--------------------------------------------------
    # e) count_even_numbers
    #--------------------------------------------------
    
    print count_even_numbers(10)
    print count_even_numbers(100)
    print count_even_numbers(0)
    print count_even_numbers(22)
    
    #--------------------------------------------------
    # f) summarize_5_numbers
    #--------------------------------------------------
    
    print summarize_5_numbers(1, 1, 1, 1, 1)
    print summarize_5_numbers(1, 2, 3, 4, 5)





if __name__== '__main__':
    main()




##################################################
# End.
##################################################
35
99
100
1
The number is not 5 or 6
it is 5 or 6, 5 in this case
it is 5 or 6, 6 in this case
The number is not 5 or 6
Blue
This is not a correct color option
Green
Green
0
0
0
6
51
1
12
The average of the 5 numbers is 1 , the max is 1 , and the minimum of the numbers is 1
(1, 1, 1)
The average of the 5 numbers is 3 , the max is 5 , and the minimum of the numbers is 1
(3, 1, 5)

```
