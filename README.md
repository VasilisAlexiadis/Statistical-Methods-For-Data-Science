Exercises
1. To test for any significant difference in the number of hours between breakdowns for four machines, the data in Machines.csv were obtained.
a. At the 𝛼 =.05 level of significance, what is the difference, if any, in the population mean times among the four machines?
b. Use Fisher’s LSD procedure to test for the equality of the means for machines 2 and 4. Use a .05 level of significance.
c. Use the Bonferroni adjustment to test for a significant difference between all pairs of means. Assume that a maximum overall experimentwise error rate of .05 is desired.
2. A research firm tests the miles-per-gallon characteristics of three brands of gasoline. Because of different gasoline performance characteristics in different brands of automobiles, five brands of automobiles are selected and treated as blocks in the experiment. That is, each brand of automobile is tested with each type of gasoline. The results of the experiment (in miles per gallon) follow.
Gasoline Brands
I II III
A 18 21 20
B 24 26 27
Automobiles C 30 29 34
D 22 25 24
E 20 23 24
a. At 𝛼 =.05, is there a significant difference in the mean miles-per-gallon characteristics of the three brands of gasoline?
b. Analyze the experimental data using the ANOVA procedure for completely randomized designs. Compare your findings with those obtained in part (a). What is the advantage of attempting to remove the block effect?
3. As part of a study designed to compare hybrid and similarly equipped conventional vehicles, Consumer Reports tested a variety of classes of hybrid and all-gas model cars and sport utility vehicles (SUVs). The data in HybridTest.csv show the miles-per-gallon rating Consumer Reports obtained for two hybrid small cars, two hybrid midsize cars, two hybrid small SUVs, and two hybrid midsize SUVs. Also shown are the miles per gallon obtained for eight similarly equipped conventional models.
At the 𝛼=.05 level of significance, test for significant effects due to class, type, and interaction.
4. The Toyota Camry is one of the best-selling cars in North America. The cost of a previously owned Camry depends upon many factors, including the model year, mileage, and condition. To investigate the relationship between the car’s mileage and the sales price for a 2007 model year Camry, the data in Camry.csv file show the mileage and sale price for 19 sales (Pricehub website, February 24, 2012).
a. Develop a scatter diagram with the car mileage on the horizontal axis and the price on the vertical axis.
b. What does the scatter diagram developed in part (a) indicate about the relationship between the two variables?
c. Develop the estimated regression equation that could be used to predict the price ($1000s) given the miles (1000s).
d. Test for a significant relationship at the .05 level of significance.
e. Did the estimated regression equation provide a good fit? Explain.
f. Provide an interpretation for the slope of the estimated regression equation.
g. Suppose that you are considering purchasing a previously owned 2007 Camry that has been driven 60,000 miles. Using the estimated regression equation developed in part (c), predict the price for this car. Is this the price you would offer the seller?
h. Show the ANOVA table. What is your conclusion?
5. The data in file BusinessTravel.csv on 𝑥= average daily hotel room rate, and 𝑦= amount spent on entertainment (The Wall Street Journal, August 18, 2011) are provided.
a. Predict the amount spent on entertainment for a particular city that has a daily room rate of $89.
b. Develop a 95% confidence interval for the mean amount spent on entertainment for all cities that have a daily room rate of $89.
c. The average room rate in Chicago is $128. Develop a 95% prediction interval for the amount spent on entertainment in Chicago.
6. Many countries, especially those in Europe, have significant gold holdings. But, many of these countries also have massive debts. The data in GoldHoldings.csv show the total value of gold holdings in billions of U.S. dollars and the debt as a percentage of the gross domestic product for nine countries (WordPress and Trading Economics websites, February 24, 2012).
a. Develop a scatter diagram. What’s the relationship? Are there any outliers and/or influential observations? Then, use residual analysis to determine whether any outliers and/or influential observations are present.
b. Suppose that, after looking at the scatter diagram of the data in part (a), you were able to visually identify what appears to be an influential observation. Drop this observation from the data set and fit an estimated regression equation to the remaining data. Compare the estimated slope for the new estimated regression equation to the estimated slope obtained in part (a). Does this approach confirm the conclusion you reached in part (a)? Explain.
7. A data set containing information for 45 mutual funds that are part of the Morningstar Funds 500 is available in the file named MutualFunds.csv. The data set includes the following five variables:
• Fund Type: The type of fund, labeled DE (Domestic Equity), IE (International Equity), and FI (Fixed Income).
• Net Asset Value ($): The closing price per share on December 31, 2007.
• 5-Year Average Return (%): The average annual return for the fund over the past five years.
• Expense Ratio (%): The percentage of assets deducted each fiscal year for fund expenses.
• Morningstar Rank: The risk adjusted star rating for each fund; Morningstar ranks go from a low of 1-Star to a high of 5-Stars.
a. Develop an estimated regression equation that can be used to predict the 5-year average return given the type of fund. At the .05 level of significance, test for a significant relationship.
b. Did the estimated regression equation developed in part (a) provide a good fit to the data? Explain.
c. Develop the estimated regression equation that can be used to predict the 5-year average return given the type of fund, the net asset value, and the expense ratio. At the .05 level of significance, test for a significant relationship. Do you think any variables should be deleted from the estimated regression equation? Explain.
d. Develop an estimated regression equation that can be used to predict the 5-year average return given the type of fund, the expense ratio, and the Morningstar Rank. Using 𝛼=.05, remove any independent variables that are not significant.
e. Use the estimated regression equation developed in part (d) to predict the 5-year average return for a domestic equity fund with an expense ratio of 1.05% and a 3-Star Morningstar Rank. Provide a 95% confidence interval and a 95 % prediction interval.
8. The data in Auto2.csv show the curb weight, horsepower, price, and 1/4-mile speed for 16 popular sports and GT cars.
a. Find the estimated regression equation that uses price and horsepower to predict 1/4-mile speed.
b. Plot the standardized residuals against 𝑦̂. Does the residual plot support the assumption about 𝜖? Explain.
c. Check for any outliers. What are your conclusions? Use both standardized and studentized deleted residuals.
d. Are there any influential observations? Explain. Use both leverage and Cook’s distance.
9. Over the past few years, the percentage of students who leave Lakeland College at the end of the first year has increased. Last year, Lakeland started a voluntary one-week orientation program to help first-year students adjust to campus life. If Lakeland is able to show that the orientation program has a positive effect on retention, they will consider making the program a requirement for all first-year students. Lakeland’s administration also suspects that students with lower GPAs have a higher probability of leaving Lakeland at the end of the first year. In order to investigate the relation of these variables to retention, Lakeland selected a random sample of 100 students from last year’s entering class. The data are contained in the file named Lakeland.csv.
The dependent variable 𝑦 = Return was coded as 1 if the student returned to Lakeland for the sophomore year, and 0 if not. The two independent variables are:
• 𝑥1= GPA at the end of the first semester.
• 𝑥2= 0 if the student did not attend the orientation program, or 1 if the student attended the orientation program.
a. Write the logistic regression equation relating 𝑥1and 𝑥2 to 𝑦.
b. What is the interpretation of 𝐸(𝑦) when 𝑥2=0?
c. Compute the estimated logit.
d. Use 𝛼=.05 to determine whether each of the independent variables is significant.
e. Use the estimated logit computed in part (c) to estimate the probability that students with a 2.5 grade point average who did not attend the orientation program will return to Lakeland for their sophomore year. What is the estimated probability for students with a 2.5 grade point average who attended the orientation program?
f. What is the estimated odds ratio for the orientation program? Interpret it.
g. Would you recommend making the orientation program a required activity? Why or why not?
10. Corvette, Ferrari, and Jaguar produced a variety of classic cars that continue to increase in value. The data in ClassicCars.csv, based upon the Martin Rating System for Collectible Cars, show the rarity rating (1–20) and the high price ($1000) for 15 classic cars.
a. Develop a scatter diagram of the data using the rarity rating as the independent variable and price as the dependent variable. Does a simple linear regression model appear to be appropriate?
b. Develop an estimated multiple regression equation for the second-order model involving the independent variable.
c. Develop an estimated regression equation for the exponential model.
d. Do you prefer the estimated regression equation developed in part (b) or part (c)? Explain.
11. A study provided data on variables that may be related to the number of weeks a person has been jobless. The dependent variable in the study (Weeks) was defined as the number of weeks a person has been jobless due to a layoff. The following independent variables were used in the study.
• Age: The age of the person.
• Educ: The number of years of education.
• Married: A dummy variable; 1 if married, 0 otherwise.
• Head: A dummy variable; 1 if the head of household, 0 otherwise.
• Tenure: The number of years on the previous job.
• Manager: A dummy variable; 1 if management occupation, 0 otherwise.
• Sales: A dummy variable; 1 if sales occupation, 0 otherwise.
The data are available in the file Layoffs.csv.
a. Develop the best one-variable estimated regression equation.
b. Employ the stepwise procedure to develop the best estimated regression equation. Use values of .05 for 𝛼-to-enter and 𝛼-to-leave.
c. Employ the forward selection procedure to develop the best estimated regression equation. Use a value of .05 for 𝛼-to-enter.
d. Employ the backward elimination procedure to develop the best estimated regression equation. Use a value of .05 for 𝛼-to-leave.
e. Employ the best-subsets regression procedure to develop the best estimated regression equation.
12. A Pew Research Center survey asked adults if their ideal place to live would have a faster pace of life or a slower pace of life. A preliminary sample of 16 respondents showed 4 preferred a faster pace of life, 11 preferred a slower place of life, and 1 said it did not matter.
a. Are these data sufficient to conclude there is a difference between the preferences for a faster pace of life or a slower pace of life? Use 𝛼=.05. What is your conclusion?
b. Considering the entire sample of 16 respondents, what is the percentage who would like a faster pace of life? What is the percentage who would like a slower pace of life? What recommendation do you have for the study?
13. The Ladies Professional Golf Association (LPGA) ANA Inspiration tournament was held in April 2015 at the Mission Hills Country Club in Rancho Mirage, California. LPCAANA.csv contains first-round and second-round scores for a random sample of 13 golfers. Use 𝛼=
.05 to determine whether the first- and second-round median scores for golfers in the LPGA ANA Inspiration tournament differed significantly. What is your conclusion?
14. Police records show the numbers of daily crime reports for a sample of days during the winter months and a sample of days during the summer months included in PoliceRecords.csv. Use a .05 level of significance to determine whether there is a significant difference between the winter and summer months in terms of the number of crime reports. What is your conclusion?
15. Nielsen Research provides weekly ratings of nationally broadcast television programs. The mean weekly number of viewers for the 207 prime-time programs broadcast by five major televisions networks (ABC, CBS, FOX, NBC, and CW) for the 2017–2018 television season are provided in the file Viewership2017-18.csv. Do these data suggest that the overall ratings for the five networks differ significantly? Use a .10 level of significance. What is the p-value, and what is your conclusion?
16. The rankings of a sample of professional golfers in both driving distance and putting are included in ProGolfers.csv. What is the rank correlation between driving distance and putting for these golfers? Test for significance of the correlation coefficient at the .10 level of significance.
