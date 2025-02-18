# -*- coding: utf-8 -*-
"""
##################################################
#
# GEB 6895: Tools for Business Intelligence
#
# Exercises with Conditional Statements
#   and Functions in Python
#
# Lealand Morin, Ph.D.
# Assistant Professor
# Department of Economics
# College of Business Administration
# University of Central Florida
#
# September 24, 2019
#
##################################################
"""



##################################################
# Conditional Statements.
##################################################

i = 5
while i > 0:
  i -= 1
  print('i = %d' % i)
  print("Inside the loop")




i = 5
while i > 0:
  i -= 1
  print('i = %d' % i)
  if i == 3:
      break
  print("Inside the loop")





##################################################
# Taking input from the keyboard
##################################################

while True:
  usr_command = input("Enter your command: ")
  if usr_command == "quit":
    break
  else:
    print("You typed " + usr_command)




##################################################
# Exercise continued: find the common elements
##################################################

def CommonElementsNew(list_1, list_2):
    new_list = []
    for i in list_1:
        if (i not in new_list):
            for k in list_2:
                if i == k: # & (i not in new_list):
                    new_list.append(i)
    return new_list

a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]

CommonElementsNew(a, b)


def CommonElementsNew(list_1, list_2):
    new_list = []
    new_list.append(i)
    return new_list



a[2] in b

c = ['string1', 'string2', 'string7', 'string11']
d = ['string1', 'string3', 'string7', 'string9']

CommonElementsNew(c, d)


##################################################
# Exercise: Rock paper scissors.
##################################################

# def WinnerOfRPS(play_1, play_2):
    # Declare winner here.


play_1 = input('Enter move for player 1:' )
while play_1 not in ['rock', 'paper', 'scissors']:
    play_1 = input('Enter move for player 1:' )
print(1000*'\n') # Print spaces to hide last players move.
play_2 = input('Enter move for player 2:' )
while play_2 not in ['rock', 'paper', 'scissors']:
    play_2 = input('Enter move for player 2:' )
print(1000*'\n') # Print spaces to hide last players move.

print('Player 1 played %s and Player 2 played %s') % (play_1, play_2)


# How to declare a winner.
if (play_1 == play_2):
    print('You tied')
elif (play_1 == 'rock' and play_2 == 'scissors'):
    print('Player 1 wins')
else:
    print('Player 2 wins')
# ... continued...

##################################################
# Exercise: Factorial.
##################################################

# For Loop

def factorial(n):
    product = 1
    for i in range(1,n+1):
        product = product*i
    
    return product
    
print factorial(5)
print factorial(3)
print factorial(9)

# While Loop

def factorial_2(n):
    product = 1
    i = 1
    while i <= n:
        product = product*i
        i = i + 1
    return product   

print factorial_2(5)
print factorial_2(3)
print factorial_2(9)

# Function calling itself

def factorial_3(n):
    if n == 1:
        product = 1
    else:
        product = n*factorial_3(n-1)
        
    return product
        
print factorial_3(5)
print factorial_3(3)
print factorial_3(9)

##################################################
# Exercise: Fibonacci sequence.
##################################################

# Example of sequence.
# 1, 1, 2, 3, 5, 8, 13

def Fibonacci(n):
    fib_list = []
    for i in range(n):
        if i in [0,1]:
            next_fib = 1
        else:
            next_fib = sum(fib_list[(len(fib_list) - 2) : len(fib_list)])

        fib_list.append(next_fib)

    print(fib_list)


range(5) + 1

fib_list = [1,2,3,4]
fib_list[(len(fib_list) -2) : len(fib_list)]


Fibonacci(5)

sum([])


Fibonacci(20)


# Is there a better way?
# Why not store the elements in a fixed vector.



# What about a recursive algorithm?
# Try another version mirroring the factorial example in P&G.





##################################################
# End
##################################################
