# MechaCar_Statistical_Analysis

## Overview of the analysis
Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes. Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots. Run t-tests to determine if the manufacturing lots are statistically different from the mean population. Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Resources
Data - MechaCar_mpg.csv, Suspension_Coil.csv

Software – R Language 

## Deliverable 1:  Linear Regression to Predict MPG
Linear Regression Summary: 

![non-random-var](https://github.com/NickFoley47/MechaCar_Statistical_Analysis/blob/main/Pics/non-random-var.PNG)

Vehicle length and ground clearance are unlikely to provide random amounts of variance. The P value of the linear regression analysis is 5.35e-11 which is smaller than the assumed significance level of .05%. Therefore, we can reject the null hypothesis, and the slope of our linear model is not zero. The R-squared value is 0.7149, which means roughly 71% of the variability of our dependent variable (mpg) is explained using this linear model. 

## Deliverable 2: Summary Statistics on Suspension Coils

Total Summary of Population:

![total-summary]( https://github.com/NickFoley47/MechaCar_Statistical_Analysis/blob/main/Pics/total-summary.PNG)

Summary of Each Lot:

![lot-summary]( https://github.com/NickFoley47/MechaCar_Statistical_Analysis/blob/main/Pics/lot-summary.PNG)

Lot 1 and lot 2 meet the design specification. Lot 1 variance is .979 and lot 2 variance is 7.469 which are in the accepted since the suspension coils must not exceed 100 pounds per square inch. Lot 3 exceeds the allowed amount, and the variance is 170.286. Lots 1 and 2 meet specifications. 

## Deliverable 3: T-Tests on Suspension Coils

T-Test on Suspension Coils:

![ t-test-overall](https://github.com/NickFoley47/MechaCar_Statistical_Analysis/blob/main/Pics/t-test-overall.PNG)

T-Test Lot 1:

![ lot-1-ttest]( https://github.com/NickFoley47/MechaCar_Statistical_Analysis/blob/main/Pics/lot-1-ttest.PNG)

T-Test Lot 2:

![ lot-2-ttest]( https://github.com/NickFoley47/MechaCar_Statistical_Analysis/blob/main/Pics/lot-2-ttest.PNG)

T-Test Lot 3:

![lot-3-ttest]( https://github.com/NickFoley47/MechaCar_Statistical_Analysis/blob/main/Pics/lot-3-ttest.PNG)

Lot 1 P-Value is 1, lot 2 P-value is .6072 and lot 3 P-value is .04168. Lot 1 and 2 are statistically similar to the population data. Lot 3 P-value is below our .05 significance level which shows that lot 3 mean is not statistically like the population data.

## Deliverable 4: Design a Study Comparing the MechaCar to the Competition
The metrics I would design my study around would be mpg, safety, horsepower, and maintenance cost. I feel these metrics are the most important to the consumer. 
Null Hypothesis: There is no statistical difference between MechaCar maintenance cost and the maintenance cost of all other competitor vehicles.
Alternative Hypothesis: There is statistical difference between MechaCar maintenance cost and the maintenance cost of all other competitor vehicles.
I would conduct T-test to determine if there is statistical difference between MechaCar and other competitors. This would allow us to see if MechaCar is preforming better or worse than the competitors. 

