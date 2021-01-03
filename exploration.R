####
####EXPLORING DATA
####

# Getting simple data sets
# install ggplot2 they come as pre installed then
library(ggplot2)

View(diamonds) # opens dataset in table view
?diamonds  # metadata of dataset

###################################################
# Summary statistics /  Five number summary
###################################################

fivenum(diamonds$price) # returns 326.0   950.0  2401.0  5324.5 18823.0

# n/a are bad, means data not clear

#Data is splited in 5 parts and then there is count of non numeric values and then 
#there is mean values for numeric values
summary(diamonds) # more convenient five number summary
head(diamonds) # checking the begining of dataset
boxplot(diamonds) # graphical reprezentation
str(diamonds) # shows data types

#####################################
#   Probability distribution
#####################################

#For testing what statistical models can be used

# Two test data vizualizationa dn Hyphothesyss test

# Distribution test
hist(diamonds$price)
qqnorm(diamonds$price) # line from first to last shows something

hist(log(diamonds$price)) # WRONG usage in this case
hist(diamonds$carat)

# Hypothesis test

#Shapiro-Wilk normality test

diam = as.data.frame(diamonds) # creating data frome (vector or something)
set.seed(50) # specific seed so that random value is always the same when runing script
mysample = sample.int(n=42940, size = 5000, replace = F) # extracting random 5000 values
shapiro.test(diam[mysample,7]) # if P<0.5 data is not normality values
shapiro.test(rnorm(1000, 50, 5))
shapiro.test(diam[mysample,1])
