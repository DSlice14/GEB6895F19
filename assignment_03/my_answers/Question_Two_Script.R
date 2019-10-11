##################################################
# 
# GEB 6895: Tools for Business Intelligence
# 
# Assignment 3, Question 2
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
hospital_data <- read.csv(file = 'hospital_choice.csv')

# Inspect the data.
summary(hospital_data)

#View Data
View(hospital_data)

# Column Names
colnames(hospital_data)

##################################################
# Full Linear Model
##################################################

#Model with all variables
life_linear_model <- lm(data = hospital_data, 
                      formula = D ~ DISTANCE + INCOME + OLD)

#Summarize full model
summary(life_linear_model)

# You might want to check the predictions to see if they are all positive and less than one.

##################################################
# Full Logistic Model
##################################################

#Model with all variables
life_log_model <- glm(data = hospital_data, 
                      formula = D ~ DISTANCE + INCOME + OLD)

#Summarize full model
summary(life_log_model)

##################################################
# Logistic Model #2
##################################################

#Model with all variables
life_log2_model <- glm(data = hospital_data, 
                      formula = D ~ DISTANCE + INCOME + OLD + OLD*DISTANCE)

#Summarize full model
summary(life_log2_model)


##################################################
# Correctly implemented but without adressing the questions for c,d,e.
##################################################

##################################################
# End
##################################################
