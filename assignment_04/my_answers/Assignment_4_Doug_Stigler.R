##################################################
# 
# GEB 6895: Tools for Business Intelligence
#
# Douglas Stigler
#Assignment 4 Answers
# 
# OLS Regression Demo
# Regression with Data Entered Directly into the Script
# 
# Lealand Morin, Ph.D.
# Assistant Professor
# Department of Economics
# College of Business Administration
# University of Central Florida
# 
# September 16, 2019
# 
##################################################
# 
# Calculating_beta_hat gives an example of OLS regression
#   using data entered within this script.
#   It includes exercises to calculate the OLS
#   estimates from direct calculation and optimization.
# 
# Dependencies:
#   None. 
# 
##################################################


##################################################
# Preparing the Workspace
##################################################

# Clear workspace.
rm(list=ls(all=TRUE))

# Set working directory.
# wd_path <- '/path/to/your/folder' 
# Not required, since this program does not interact with other files.

# setwd(wd_path)

# No libraries required.
# Otherwise would have a command like the following.
# library(name_of_R_package)


##################################################
# Enter the dataset and run regression
##################################################

# Enter the numbers in the dataset.
income_data  <- c(14, 18, 18, 16, 16, 26, 20, 18, 20, 22)
agg_pct_data <- c(9, 10, 8, 7, 10, 4, 5, 5, 6, 7)
agg_data <- data.frame(income = income_data, 
                       agg_pct = agg_pct_data)

# Inspect the data.
summary(agg_data)

# Plot a scattergraph of income and housing prices. 
plot(agg_data[, 'income'], 
     agg_data[, 'agg_pct'], 
     main = 'Aggregate Income vs. Pct. in Agriculture', 
     xlab = 'Income', 
     ylab = 'Pct. in Agriculture', 
     col = 'blue')
points(agg_data[, 'income'], 
     agg_data[, 'agg_pct'] + 1.5,
     col = 'red',
     pch = 20)
abline(lm_model)
abline(a = 4, b = 0.1, 
       lwd = 1, col = 'red')
#abline(h = c(10), v = c(25), 
#       lwd = 1, col = 'green')

x_vec <- seq(0, 5, by = 0.01)
y_vec <- (x_vec - 2)^2 - 1

plot(x_vec, y_vec,
     main = "Title Goes Here",
     xlab = 'The X Axis',
     ylab = 'The Y Axis',
     type = 'l',
     lwd = 3,
     col = 'black')
color_list <- rainbow(7)
for (i in 1:7){
  lines(x_vec, y_vec + i, col = color_list[i], lwd = 3)
}

lines(x_vec, y_vec + 1, 
      col = 'red',
      lwd = 3)
points(x_vec, y_vec + 3, 
      col = 'green',
      lwd = 1)


# Estimate a regression model.
lm_model <- lm(data = agg_data, 
                 formula = income ~ agg_pct)

# Output the results to screen.
summary(lm_model)

# Store the slope coefficient. 
beta_1_hat_lm <- coef(lm_model)["agg_pct"]


##################################################
# Estimating beta from direct calculation
##################################################

# Calculate the estimate of the slope coefficient above. 

y <- agg_data[, 'income']
x <- agg_data[, 'agg_pct']

#finding the means


beta_1_hat_calc <- function(x,y){
  sum((y - mean(y))*(x-mean(x))) / sum(((x-mean(x))^2))
}

# Compare with the output above. 
print(beta_1_hat_calc(x,y))
print(beta_1_hat_lm)

##################################################
# Estimating beta from solving equations
##################################################


# Part i: Define matrices for normal equations.

ones_x <- rep(1,length(x))

X_T_x <- cbind(ones_x,x) 
t(x)%*%y
beta_hat_x <- solve(t(x)%*%x, t(x)%*%y)

ones_y <- rep(1,length(y))
X_T_y <- cbind(ones_y,y)
t(y)%*%x
beta_hat_y <- solve(t(y)%*%y, t(y)%*%x)


# Part ii: Solve the equations for beta. 

beta_hat_norm <- qr.solve(X_T_y,X_T_x)


##################################################
# Estimating beta from optimization
##################################################

# Part i: Sum of Squared residuals.

# Note that beta is a vector of two coefficients. 

beta_test_ssr <- matrix(c(coef(lm_model)["(Intercept)"], 
                          coef(lm_model)["agg_pct"]),
                             nrow = 2,
                             ncol = 1)

ssr <- function(beta, y, x) {
  
  beta_0 <- beta[1]
  beta_1 <- beta[2]
  
  # ...
  # You made it pretty far but stopped short of this one. 
  # Keep on going!
  
  ssr <- sum((y - beta_0 - (beta_1 * x))^2)
  
  return(ssr)
}

sqrt(ssr(beta_test_ssr, y, x)/2)

# Part ii: Plot the SSR function on a graph.

# Draw several lines for fixed values of beta_0, 
# with candidate values of beta_1 on the horizontal axis.

# Verify that the maximum is at the beta_hat estimate.

plot(sum((y - beta_0 - (beta_1 * x))^2))

# Part iii: Optimize the SSR function w.r.t. beta. 

# ...

beta_hat_opt <- optimize(function(x) x^2*(print(x)-1), lower = 0, upper = 5)

# Compare with the output above. 


##################################################
# End
##################################################

