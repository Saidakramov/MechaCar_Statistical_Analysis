#Deliverable 1
# 1.3 load dyplyr package
library(dplyr)
# 1.4 Import and read in the MechaCar_mpg.csv file as a dataframe.
MechaCar <- read.csv(file ="MechaCar_mpg.csv",check.names = F, stringsAsFactors = F)
# 1.5 perform linear regression
Mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar)
#1.6 Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(Mecha_lm)

#Deliverable 2 
# 2.2 read csv file
Suspension<-read.csv(file = 'Suspension_coil.csv',check.names = F,stringsAsFactors = F)
# 2.3 total_summary
total_summary <- Suspension %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
# 2.4 lot summary
lot_summary <- Suspension%>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups= 'keep')

# Deliverable 3
# 3.1 t.test() for all lots
t.test(Suspension$PSI,mu=1500)
#Test for lot 1
t.test(subset(Suspension,Manufacturing_Lot=="Lot1")$PSI,mu=1500)
#Test for Lot 2
t.test(subset(Suspension,Manufacturing_Lot=="Lot2")$PSI,mu=1500)
#Test for Lot 3
t.test(subset(Suspension,Manufacturing_Lot=="Lot3")$PSI,mu=1500)
