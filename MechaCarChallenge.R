rm(list=ls())
cat("\014")

#3 use the library function to load the dplyr package
library(dplyr)

#4 Import and read in the csv file as a dataframe
mechacar_mpg <- read.csv("MechaCar_mpg.csv", check.names=F, stringsAsFactors = F)

#5 Perform linear regression, passing all six variables and add the dataframe as the data parameter
#lm(mpg + disp + drat + wt + hp,mechacar_mpg)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_mpg)

#6 Use summary functio, determine the p-value and the r-squared value for linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_mpg)) 

