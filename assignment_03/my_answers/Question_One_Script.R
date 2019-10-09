##################################################
# 
# GEB 6895: Tools for Business Intelligence
# 
# Assignment 3, Question 1
# Regression with Data from Spreadsheet
# 
# Douglas Stigler
# 
# Due October 9, 2019
# 
##################################################
# 
# Clear workspace.
rm(list=ls(all=TRUE))

# Set working directory.
# wd_path <- '/path/to/your/folder' 
wd_path <- 'C:/Users/dougl/Documents/GEB6895/My_Mirror/GEB6895F19-1/assignment_03' 

setwd(wd_path)

# Check folder:
getwd()


##################################################
# Read the dataset and run regression
##################################################

# Read the newly saved dataset.
life_data <- read.csv(file = 'life_exp.csv')

# Inspect the data.
summary(life_data)

#View Data
View(life_data)

# Column Names
colnames(life_data)

#Histogram
hist(life_data$lifeexpect)

##################################################
# Full Model
##################################################

#Model with all variables
life_full_model <- lm(data = life_data, 
                      formula = lifeexpect ~ medinc + uninsured + smoke + obesity + teenbirth + gunlaw + metro)

#Summarize full model
summary(life_full_model)

##################################################
# Removing one variable at a time from full model
##################################################

#Model without medinc variables
life_a_model <- lm(data = life_data, 
                   formula = lifeexpect ~ uninsured + smoke + obesity + teenbirth + gunlaw + metro)
#Summarize a model
summary(life_a_model)

####################

#Model without uninsured variables
life_b_model <- lm(data = life_data, 
                   formula = lifeexpect ~ medinc + smoke + obesity + teenbirth + gunlaw + metro)

#Summarize b model
summary(life_b_model)

####################


#Model without gunlaw variables
life_c_model <- lm(data = life_data, 
                   formula = lifeexpect ~ medinc + uninsured + smoke + obesity + teenbirth  + metro)

#Summarize c model
summary(life_c_model)

####################

##################################################
# Removing variables from full model
##################################################

#Model with -1 variables
life_d_model <- lm(data = life_data, 
                      formula = lifeexpect ~ uninsured + smoke + obesity + teenbirth + gunlaw + metro)
#Summarize -1 model
summary(life_d_model)

####################

#Model with -2 variables
life_e_model <- lm(data = life_data, 
                   formula = lifeexpect ~ smoke + obesity + teenbirth + gunlaw + metro)

#Summarize -2 model
summary(life_e_model)

####################


#Model with -3 variables
life_f_model <- lm(data = life_data, 
                   formula = lifeexpect ~ smoke + obesity + teenbirth  + metro)

#Summarize -3 model
summary(life_f_model)

####################


#Model with -4 variables
life_g_model <- lm(data = life_data, 
                   formula = lifeexpect ~ smoke + obesity + teenbirth)

#Summarize -4 model
summary(life_g_model)

####################

##################################################
# Creating Alternative Model
##################################################

#Alt Model with 1 variable
life_alt1_model <- lm(data = life_data, 
                      formula = lifeexpect ~ medinc)

#Summarize 1 variable
summary(life_alt1_model)

####################

#Alt 2
life_alt2_model <- lm(data = life_data, 
                      formula = lifeexpect ~ medinc + uninsured)

#Summarize 2 variable
summary(life_alt2_model)

#R^2 Stat is better, keeping variable

####################

#Alt 3
life_alt3_model <- lm(data = life_data, 
                      formula = lifeexpect ~ medinc + uninsured + smoke)

#Summarize 3 variable
summary(life_alt3_model)

#R^2 Stat is better, keeping variable

#####################

#Alt 4
life_alt4_model <- lm(data = life_data, 
                      formula = lifeexpect ~ medinc + uninsured + smoke + obesity)

#Summarize 4 variable
summary(life_alt4_model)

#R^2 Stat is better, keeping variable

#####################

#Alt 5
life_alt5_model <- lm(data = life_data, 
                      formula = lifeexpect ~ medinc + uninsured + smoke + obesity + teenbirth)

#Summarize 5 variable
summary(life_alt5_model)

#R^2 Stat is better, keeping variable

#####################

#Alt 6
life_alt6_model <- lm(data = life_data, 
                      formula = lifeexpect ~ medinc + uninsured + smoke + obesity + teenbirth + gunlaw)

#Summarize 6 variable
summary(life_alt6_model)

#R^2 Stat is better, keeping variable

#####################

#Alt 7
life_alt7_model <- lm(data = life_data, 
                      formula = lifeexpect ~ medinc + uninsured + smoke + obesity + teenbirth + gunlaw + metro)

#Summarize 7 variable
summary(life_alt7_model)

#R^2 Stat is better, keeping variable


##################################################
# End
##################################################