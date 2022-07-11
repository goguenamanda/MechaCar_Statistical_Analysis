# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
![mechaCar_summary_lm](https://user-images.githubusercontent.com/101145419/178184388-a60e4963-f534-4f9f-9e07-c8d55ffbbbf3.png)

### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Vehicle length, with a p-value of 2.60e-12 and ground clearance, with a p-value of 5.21e-08, were both sufficient in providing non-random variance to the mpg values.

### Is the slope of the linear model considered to be zero? Why or why not?
No, since the r-squared value was 0.7149, this suggests that there is a strong correlation between mpg and the other variables. The slope would only be zero if there were no correlation between mpg and the other variables.

### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
Not necessarily, since there could be other factors that lead to the variability of the mpg values. 




## Summary Statistics on Suspension Coils
![total_summary](https://user-images.githubusercontent.com/101145419/178184477-4f831f02-568e-4fc1-a534-2684af138225.png)
![lot_summary](https://user-images.githubusercontent.com/101145419/178184486-81a9d11e-22ae-45ac-85bd-da519be63973.png)

### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
In total, for all lots, the manufacturing data on suspension coils does not exceed 100 pounds per square inch. That being said, when we analyze each lot individually, we find that lot 3 is significantly higher than the other lots at 170.29 PSI, which is above the specified limit, while lot 1 and lot 2 are below the limit.


## T-Tests on Suspension Coils

![all_lots](https://user-images.githubusercontent.com/101145419/178184564-c4022b5d-f332-459c-a5a4-b38962862771.png)
![lot1](https://user-images.githubusercontent.com/101145419/178187048-f6a3061d-7f75-467e-9c58-88c6cc3580cd.png)
![lot2](https://user-images.githubusercontent.com/101145419/178187047-7d8b27a7-8fef-4ac6-8ba9-7a2332cf158e.png)
![lot3](https://user-images.githubusercontent.com/101145419/178187046-db583033-2981-480c-bf12-e065117177dd.png)

### Briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary
In the total lots, lot 1, and lot 2, there is no statistically significant difference when compared against the population mean in our analysis. However, as we previously saw due to the high variance in lot 3, the t-test showed that there is a statistically significant compared to the population mean, with lot 3's p-value sitting at .04, which is below the .05 threshold of statical significance.

## Study Design: MechaCar vs Competition

### What metric or metrics are you going to test?
For my hypothetical study, I would compare the cost of the vehicle to the highway fuel efficiency.

### What is the null hypothesis or alternative hypothesis?
My alternative hypothesis would be: If the cost of the vehicle is related to its highway fuel efficiency, then vehicles that cost over $27,000 will have better fuel efficiency than cars that cost less than $27,000. 

### What statistical test would you use to test the hypothesis? And why?
For this analysis, I would run a t-test to compare the two variables and see if the p-value of that test is significant.

### What data is needed to run the statistical test?
For this analysis, I would need data on the varying costs of the cars and data on their highway mpg.
