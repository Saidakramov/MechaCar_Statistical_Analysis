# MechaCar_Statistical_Analysis
## Objectives:
- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Linear Regression to Predict MPG 

<img width="772" alt="Deliverable 1" src="https://user-images.githubusercontent.com/89552059/193485993-92ffbab9-6ab9-45c8-9c72-666a423bc4b7.png">

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  - Vehicle_weight, spoiler_angle and AWD provide non random amount of variance.
- Is the slope of the linear model considered to be zero? Why or why not?
  - Slope is not equal to zero , as slope coefficients contain non zero values.
- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
  - The R squared value is 71.49% which implies that roughly 71% of the time the predictions will be effective using the linear model.
  
## Summary Statistics on Suspension Coils
<img width="338" alt="Total_summary" src="https://user-images.githubusercontent.com/89552059/193485996-c2fabf91-894c-43dc-a17c-c9d349f8444e.png">
<img width="497" alt="lot_summary" src="https://user-images.githubusercontent.com/89552059/193485998-70b4a548-bc9e-4d68-b31a-373d62ce9ec0.png">
- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
  - According to the above analysis, we can notice that, on the whole, manufacturing lots meet the maximum variance requirement. 
  - But separately, it is clear that manufacturing lot number 3 is failing to meet the requirement with about over 71 PSI.
  
## T-Tests on Suspension Coils

<img width="419" alt="all_lot" src="https://user-images.githubusercontent.com/89552059/193487075-84dfd1fd-df3a-4d06-8142-eab48cfe3cea.png">
<img width="499" alt="lot1" src="https://user-images.githubusercontent.com/89552059/193487076-febe581b-3789-4307-85ad-7f9df3b8357f.png">
<img width="485" alt="lot2" src="https://user-images.githubusercontent.com/89552059/193487079-845dc522-5398-460f-8a54-7baf5c97574f.png">
<img width="503" alt="lot 3" src="https://user-images.githubusercontent.com/89552059/193487085-1fdc5008-10bd-4456-ae51-db97c3c042dd.png">
- The above analysis states that Lot number 3 has a p-value of 0.4168, below the 0.05 significance value. 
- PSI value for all the lots as a whole is 0.06028; for lot 1, it is equal to 1, and lot 2 has 0.6072.

## Study Design: MechaCar vs Competition

- What metric or metrics are you going to test?
  - To determine if MechaCar is performing better than the competition, we can test metrics such as car price, fuel efficiency, safety rating, and carbon output.

- What is the null hypothesis or alternative hypothesis?
  - H0: There is NO statistical significant difference on defined metrics between MechaCar and competition.
  - Ha: The is statistical significant difference on defined metrics between MecharCar and competition.

- What statistical test would you use to test the hypothesis? And why?
  - I would use ANOVA testing as it is used to compare the means of a continuous variable across several groups. In our case, groups can be car classes or price range groups.
- What data is needed to run the statistical test?
  - We need the above data on test metrics from MechaCar and their competitors for accurate results. 
