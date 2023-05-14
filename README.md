# R Analysis
## MechaCar Statistical Analysis
### Overview
In this project I have used RStudio to show the statistical technical analysis for the following:

Linear Regression to Predict MPG:
I have used the csv file MecheCar_mgp.csv to create the data frame MecheCar_dataframe. I then create the coefficients values by using the 1m function to hold the residuals and coefficients values.
Summary Statistics on Suspension Coil
I have used the csv file Suspension_Coil.csv to create the dataframe coilsTotal_summary which was then inturn used to create the mean, median, variance and standard deivation.
T-Test on Suspension Coils
I used the Welch Two Sample t-test, where I created two sample table from the suspension table dataframe.
Design a Study Comparing the MechaCar to the Competition
### Results
Linear Regression to Predict MPG
In variables/coefficients in the MechaCar_dataframe, the non-random amount of variance to mpg value are the Estimate value of -1.040e02 and t value of -6.559, note both of these have an extremely small p-value of 5.35e11, meaning that they had a high level of significance.

The slope of the linear model IS NOT considered to be zero, because of Residual standard error: 8.774 on 44 degrees of freedom. The linear model predict mpg of MechaCar prototypes was very effective, because of Multiple R-squared: 0.7149, Adjusted R-squared: 0.6825 and F-statistic: 22.07 on 5 and 44 DF, p-value: 5.35e-11. See File MechaCarChallenge.R Line 1- 11. See image below of the Rstudio console output



### Summary Statistics on Suspension
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Lot 3 variance was almost double the design specifications for the suspension coils (170 plus) which cause the Standard divaiation to be much high than Lot 1 and Lot 2. Note that Lot 1 and Lot 2 has meant all design specifications. See File MechaCarChallenge.R Line 12 - 37. See images below of the Rstudio Environment output.





T-Test on Suspension Coils
Welch Two Sample t-test was performed on two sample table against PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.The t = 0.989, df = 16.577, p-value = 0.3369 The alternative hypothesis: true difference in means is not equal to 0. 95 percent confidence interval: -0.0005945674 for Sample 1 and 0.0016400259 for sample 2 sample estimates: mean of x is 3.175743 and the mean of y 3.175220 See File MechaCarChallenge.R Line 39 - 44. See images below of the Rstudio Environment output

Sample 1

Sample 2

T-Test Output

Study Design: MechaCar vs Competition.
This statistical study compares vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, in findings, I found that the Manufacturer of Lot 3 was poorly designed with a suspension coil variance greater than 100. Suspension coils that are greater than 100 can have an adverse effect on a vehicle's fuel efficiency and horse power which can result in higher maintenance cost, or safety rating. Sample 1 and Sample 2 each consisted of 10 vehicles from 150. Based on the Shapiro-Wilk test, the p-value is approximately greater than 0.05 for normal data , our t-test p-value for the majority was 0.33 which is normal for the vehicles. The alternative hypothesis indicates that it was not equal to zero with a 95 percent confidence interval: -0.0005945674 for Sample 1 and 0.0016400259 for Sample 2. I have used the Welch Two Sample t-test to test the hypothesis beacause it takes actual data to do the t-test samples. The values in the PSI are needed to run the t-test. The significance level between the two samples differs between 10,000 which means the probability of it being wrong lies between 1 in every 10,000.
