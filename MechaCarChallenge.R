rm(list=ls())
cat("\014")

#Part1: Linear Regression to Predict MPG

#3 use the library function to load the dplyr package
library(dplyr)

#4 Import and read in the csv file as a dataframe
mechacar_mpg <- read.csv("MechaCar_mpg.csv", check.names=F, stringsAsFactors = F)

#5 Perform linear regression, passing all six variables and add the dataframe as the data parameter
#lm(mpg + disp + drat + wt + hp,mechacar_mpg)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_mpg)

#6 Use summary function, determine the p-value and the r-squared value for linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_mpg)) 

#Part 2: Create Visualizations for the Trip Analysis

#1/2 Import Suspension_Coil csv
coil <- read.csv("Suspension_Coil.csv", check.names=F, stringsAsFactors = F)

#3 Create total_summary dataframe using summarize
total_summary <- coil %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Var_PSI=var(PSI), Std_Dev_PSI=sd(PSI)) 

#4 Create lot_summary dataframe    
lot_summary <- coil  %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Var_PSI=var(PSI), Std_Dev_PSI=sd(PSI))

#Part 3: T-Tests on Suspension Coils using ?t.test()

#1 TTest to determine if PSI is statistically different
t.test(coil$PSI,mu=1500)





