
## Deliverable 1
    # Import Dependencies and Load CSV
    library(dplyr)
    mechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
 
   # Create a linear regression model and perform a summary that shows the p-values and r-squared values
    summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechaCar_mpg))

## Deliverable 2
    # Import Dependencies and Load CSV
    library(tidyverse)
    suspension_coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
 
    ## Create a total_summary df that gets the mean, median, variance, and standard deviation of the suspension coil’s PSI column
    total_summary <- summarize(suspension_coil, mean(PSI), median(PSI), var(PSI), sd(PSI))

    # Create a lot_group df that summarizes and groups each manufacturing lot by the mean, median, variance, and standard deviation
    lot_group <- group_by(suspension_coil, Manufacturing_Lot)
    lot_summary <- summarize(lot_group, mean(PSI), median(PSI), var(PSI), sd(PSI))


## Deliverable 3
    # Perform t-test on PSI of all manufacturing lot against pop mean of 1,500 pounds per square inch
    all_lots = suspension_coil['PSI']
    t.test(all_lots[['PSI']], mu=1500)
    
    # Perform t-test on PSI of manufacturing lot #1 against pop mean of 1,500 pounds per square inch
    lot1 = subset(suspension_coil, Manufacturing_Lot == 'Lot1')
    t.test(lot1[['PSI']], mu=1500)
    
    # Perform t-test on PSI of manufacturing lot #2 against pop mean of 1,500 pounds per square inch
    lot2 = subset(suspension_coil, Manufacturing_Lot == 'Lot2')
    t.test(lot2[['PSI']], mu=1500)

    # Perform t-test on PSI of manufacturing lot #3 against pop mean of 1,500 pounds per square inch
    lot3 = subset(suspension_coil, Manufacturing_Lot == 'Lot3')
    t.test(lot3[['PSI']], mu=1500)