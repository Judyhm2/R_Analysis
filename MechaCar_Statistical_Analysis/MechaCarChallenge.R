# Technical Analysis
?read.csv()
MechaCar_dataFrame <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F, colClasses = c("numeric", "numeric", "numeric","numeric", "numeric", "numeric"))

#Use the library() function to load the dplyr package.
library(dbplyr)
# Part 1: Linear Regression to Predict MPG
# Generate multiple linear regression model using Linear Regression Using lm()
multi.fit = lm(mpg~AWD+ground_clearance+spoiler_angle+vehicle_weight+vehicle_length, data=MechaCar_dataFrame)
summary(multi.fit)

#	Part 2: Summary Statistics on Suspension Coils
# Import csv file as dataset
coilsTotal_summary <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F )

library(tidyverse)

summary(coilsTotal_summary)
#create summary table with multiple columns
Mean_PSI <- mean(coilsTotal_summary$PSI)
Median_PSI <- median(coilsTotal_summary$PSI)
Variance_PSI <- var(coilsTotal_summary$PSI)
SD_PSI <- sqrt(var(coilsTotal_summary$PSI))

# Create the total_summary data frame.
total_summary <- data.frame(
  Mean= c (Mean_PSI), 
  Median = c(Median_PSI),
  Variance = c(Variance_PSI), 
  SD =c(SD_PSI),
  stringsAsFactors = FALSE
)
# Print the data frame.	
print(total_summary)

# Create a lot_ Summary table and group by Manufacturing 
lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarise(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD = sqrt(var(PSI)), .groups = 'keep') 

#	Part 3: T-Test on Suspension Coils
?t.test()
sample_table <- suspension_table %>% sample_n(10) #randomly sample 10 data points
sample_table2 <- suspension_table %>% sample_n(10) #generate another 510 randomly sampled data points

t.test(log10(sample_table$PSI),log10(sample_table2$PSI)) #compare means of two samples

#	Part 4: Design a Study Comparing the MechaCar to the Competition
