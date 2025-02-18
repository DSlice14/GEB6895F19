
################################################################################
# 
#### Douglas Stigler - Assignment 2 ##########
#
# GEB 6895: Tools for Business Intelligence
# Assignment 2: Loading and Using a Library of Functions
# 
# Lealand Morin, Ph.D.
# Assistant Professor
# Department of Economics
# College of Business Administration
# University of Central Florida
# 
# September 17, 2019
# 
################################################################################
# 
# This program reads in a library of functions and tests them for accuracy.
# 
# 
# 
################################################################################

# Clear workspace.
# The remove function removes everything in the workspace when the list is all.
rm(list=ls(all=TRUE))

# Set working directory.
wd_path <- 'C:/Users/dougl/Documents/GEB6895/My_Mirror/GEB6895F19-1/assignment_02/my_answer'
setwd(wd_path)

# Load library of functions.
source('my_functions.R')



################################################################################
# Running the tests
################################################################################



#--------------------------------------------------------------------------------
# Example 1
#--------------------------------------------------------------------------------

multiply_two(num_1 = 5, num_2 = 7)
multiply_two(num_1 = 99, num_2 = 1)
multiply_two(num_1 = 10, num_2 = 10)
multiply_two(num_1 = 1, num_2 = 1)

#--------------------------------------------------------------------------------
# Example 2
#--------------------------------------------------------------------------------

is_it_5_or_6(num_in = 4)
is_it_5_or_6(num_in = 5)
is_it_5_or_6(num_in = 6)
is_it_5_or_6(num_in = 100)

#--------------------------------------------------------------------------------
# Example 3
#--------------------------------------------------------------------------------

color_by_number(num_in = 10)
color_by_number(num_in = -3)
color_by_number(num_in = 25)
color_by_number(num_in = 29)

#--------------------------------------------------------------------------------
# Example 4
#--------------------------------------------------------------------------------

multiples_of_5(n = 2)
multiples_of_5(n = 17)
multiples_of_5(n = 20)
multiples_of_5(n = 200)

#--------------------------------------------------------------------------------
# Example 5
#--------------------------------------------------------------------------------

count_even_numbers(end_num = 10)
count_even_numbers(end_num = 100)
count_even_numbers(end_num = 0)
count_even_numbers(end_num = 22)

#--------------------------------------------------------------------------------
# Example 6
#--------------------------------------------------------------------------------

summarize_5_numbers(num_1 = 1, num_2 = 1, num_3 = 1, num_4 = 1, num_5 = 1)
summarize_5_numbers(num_1 = 1, num_2 = 2, num_3 = 3, num_4 = 4, num_5 = 5)




################################################################################
# End
################################################################################
