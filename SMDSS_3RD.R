# Exercise 1
# Loading the data into a dataframe
machines <- read.csv("Machines.csv", header = TRUE, sep = ";") 

# Printing the dataframe
machines
# a

# To test for any significant difference in the population mean times among the four machines, we will perform an ANOVA.
# We load the appropriate library
library(tidyr)
# Convert the data into a long format
machines_long <- gather(machines, key = "Machine", value = "hours", -c(1))
#Perform ANOVA
anova_machines <- aov(hours ~ Machine, data = machines_long)
#Print Summary
summary(anova_machines)
#In this case, the p-value (0.00238) is less than 0.05, which indicates that there is a statistically significant difference in the population mean times among the four machines.

# b
# Hypothesis  H0: mean_machine_2 = mean_machine_4, Ha: mean_machine_2 ≠ mean_machine_4 
# Fisher's LSD procedure can be used to test for the equality of the means for machines 2 and 4. We can use the LSD.test() function from the agricolae package for this.
library(agricolae)
lsd_test <- LSD.test(y = machines$Machine_2, trt = machines$Machine_4, DFerror = 12, MSerror = 25.667, group = FALSE)
# print
lsd_test
#According to the results, the mean of Machine 2 is 9.9 and the mean of Machine 4 is 9.1 and the p-value of the test is 0.8483 which is greater than 0.05, which indicates that there is not a statistically significant difference between the means of machines 2 and 4.
#It means that the equality of the means for machines 2 and 4 cannot be rejected.

# c
lsd_test_bonferroni <- LSD.test(y = machines$Machine_2, trt = machines$Machine_4, DFerror = 12, MSerror = 25.667, group = FALSE, p.adj = "bonferroni")


# 2

# Construct the dataframe
gasoline_data <- data.frame(Brand = c(rep("I", 5), rep("II", 5), rep("III", 5)),
                            Automobile = rep(c("A", "B", "C", "D", "E"), 3),
                            Miles_per_gallon = c(18, 21, 20, 24, 26, 27, 30, 29, 34, 22, 25, 24, 20, 23, 24))

fit <- aov(Miles_per_gallon ~ Brand, data = gasoline_data)
summary(fit)


# Exercise 3

# Load data to dataframe
hybrid_data <- read.csv("HybridTest.csv", header = TRUE, sep = ";") 
hybrid_data
#Use the lm() function to create a linear model to test for the effects of class, type, and interaction:
model <- lm(MPG ~ Class + Type + Class:Type, data = hybrid_data)
# ANOVA table for the model:
summary(model)
# The p-value for the Class "Small Car" coefficient is 0.0416, 
# which is less than the significance level of 0.05. So, the Class "Small Car" 

# The p-value for the Type "Hybrid" coefficient is 0.0570, 
# which is greater than the significance level of 0.05. So, the Type "Hybrid" is not a significant
# predictor of the dependent variable MPG.

# The p-values for all the interaction terms (Class:Type) are greater than the significance level of 0.05.
# So, none of the interaction terms are significant predictors of the dependent variable MPG.

# Exercise 4

camry_data <- read.csv("Camry.csv", header = TRUE, sep = ";")
# a

#Once the data is loaded into a dataframe, you can use the ggplot() function to create the scatter plot
library(ggplot2)
ggplot(camry_data, aes(x=Miles_1000s, y=Price_1000s)) + geom_point() + geom_smooth(method = "lm", se = TRUE, color = "blue", linetype = "dotted")

# b

# The scatter diagram developed in part (a) indicates a negative relationship between the car's mileage and the 
# sales price. As the mileage increases, the price tends to decrease.

# c
# To develop the estimated regression equation, we can use the lm() function in R. The equation will be in the form of price = b0 + b1*mileage
camry_regression <- lm(Price_1000s ~ Miles_1000s, data = camry_data)
camry_regression

# d
# We can use the summary() function to test for a significant relationship at the .05 level of significance.
summary(camry_regression)
# The p-value for the mileage variable is less than 0.05, which suggests that 
#there is a significant relationship between the mileage and the price of the car.

# e
# The R-squared value can be used to determine how well the estimated regression equation fits the data. An R-squared value closer to 1 indicates a better fit. In this case, the R-squared value of the model is < 1 -> Multiple R-squared:  0.5387,	Adjusted R-squared:  0.5115,
# which suggests that the model does not provide a good fit to the data.

# f
# The slope of the estimated regression equation represents the change 
# in the price of the car for a one unit change in mileage. In this case, 
# the slope is -0.05877, meaning that for every 1000 miles increase in mileage, 
# the price of the car decreases by $58.77.

# g
# to predict the price of a previously owned 2007 Camry with 60,000 miles:
predicted_price <- predict(camry_regression, newdata = data.frame(Miles_1000s=60))
predicted_price

# This may not be the price i would offer the seller, it would depend on other factors such as the condition of the car and other features.

# h
# To show the ANOVA table, we can use the anova() 
camry_anova <- anova(camry_regression)
camry_anova
# The F value is 19.849 and the p-value is 0.0003475. The p-value is less than 0.05, which suggests that there is a significant relationship between the predictor variable 
# (Miles_1000s) and the response variable (Price_1000s).

# Exercise 5

# a
# To predict the amount spent on entertainment for a particular city that has a daily room rate of $89, we need to use the
# regression equation that we have obtained from fitting the data. 
business_data <- read.csv("BusinessTravel.csv", header = TRUE, sep = ";")
regression_model <- lm(Entertainment ~ RoomRate, data = business_data)
# Then we can use the predict() function to predict the y value (amount spent on entertainment) 
# based on the x value (daily room rate).
predict(regression_model, newdata = data.frame(RoomRate = 89))

# b
# To develop a 95% confidence interval for the mean amount spent on entertainment for all cities that have a daily room rate of $89, we can use the predict() 
# function with the interval argument set to "confidence".
prediction_interval <- predict(regression_model, newdata = data.frame(RoomRate = 89), interval = "confidence", level = 0.95)
prediction_interval

# c
# To develop a 95% prediction interval for the amount spent on entertainment in Chicago, we can use the predict() 
# function with the interval argument set to "prediction".
prediction_interval <- predict(regression_model, newdata = data.frame(RoomRate = 128), interval = "prediction", level = 0.95)
prediction_interval

# Exercise 6
# Importing data
library(ggplot2)
gold_holdings_data <- read.csv("GoldHoldings.csv", header = TRUE, sep = ";") 

# a
# scatter plot
ggplot(gold_holdings_data, aes(y=Debt, x=GoldValue)) + 
  geom_point() + geom_smooth(method = "lm", se = TRUE)

# Visually it becomes obvious that point 9 is potentially an outlier / influential
regression_model <- lm(Debt ~ GoldValue, data = gold_holdings_data)
regression_model
residuals <- residuals(regression_model)
# compute the standardized residuals
standardized_residuals <- residuals/sd(residuals)

ggplot(gold_holdings_data, aes(y = Debt, x = standardized_residuals)) + geom_point()
# Second way
library(car)
influence <- influence.measures(regression_model)
influence


# b
# drop the influential observation with index 9 
data_new <- gold_holdings_data[-9,]
data_new 
# new model
model_new <- lm(Debt ~ GoldValue, data = data_new)
model_new 
# compare the slopes from 0.123 to 0.342
summary(regression_model)
summary(model_new)
# printing out new scatter plot with fitted line
ggplot(data_new, aes(y=Debt, x=GoldValue)) + 
  geom_point() + geom_smooth(method = "lm", se = TRUE)

# Exercise 7
# a 
# load data in a dataframe
data <- read.csv("MutualFunds.csv", header = TRUE, sep = ";") 

# create dummy variables for fund type
data$DE <- ifelse(data$FundType == "DE", 1, 0)
data$IE <- ifelse(data$FundType == "IE", 1, 0)
data$FI <- ifelse(data$FundType == "FI", 1, 0)

# create model
model <- lm(FiveYearAverageReturn ~ DE + IE + FI, data = data)
summary(model)
# The p-value of 2.038e-09 is less than 0.05, 
#which means that there is strong evidence to suggest
# that the independent variables (DE, IE, and FI) have a significant
# effect on the 5-year average return. This suggests that the type of fund 
#is a good predictor of the 5-year average return.

# Also, to test for a significant relationship, we can use the anova()
# function to compare the model to a null model with no independent variables.
anova(model, lm(FiveYearAverageReturn ~ 1, data = data))


# b
# examine R-squared value
rsq <- summary(model)$r.squared
rsq
# A value close to 1 indicates a good fit, while a value close to 0 indicates a poor fit
# we also plot residuals
library(ggplot2)
ggplot(model, aes(x = fitted(model), y = residuals(model))) +
  geom_point() +
  geom_hline(yintercept = 0)

# c
# Regression equation that can be used to predict the 5-year average
# return given the type of fund, net asset value and expense ratio
model_new <- lm(FiveYearAverageReturn ~ DE + IE + FI + NetAssetValue + ExpenseRatio, data = data)
summary(model_new)
# In summary we see that  the variable 'FI' is linearly dependent
# on one or more other independent variables in the model, which is causing the problem with 
# the regression coefficients, making the variable 'FI' not computable, thus we can remove it . Also 
# he NetAssetValue variable has a p-value of 0.69496 which is greater than 0.05, it means that this variable 
# is not significant, so we can remove it from the model as well.
anova(model_new, model)



# d
# Create a new data frame with only the necessary variables
data_d <- data[,c("FundType","FiveYearAverageReturn","ExpenseRatio","MorningstarRank")]

# Dummy coding for categorical variables
data_d$FundType <- as.factor(data_d$FundType)
data_d$MorningstarRank <- as.factor(data_d$MorningstarRank)
data_d_dummy <- model.matrix(~ FundType + MorningstarRank, data = data_d)

# Remove the first column, which is the reference level for the dummy variables
data_d_dummy <- data_d_dummy[,-1]

# Fit the linear model with the dummy variables
model_d <- lm(FiveYearAverageReturn ~ data_d_dummy + ExpenseRatio, data = data_d)

# Check p-values and remove insignificant variables
summary(model_d)
#model_d <- update(model_d, ~ . - variable_name) # Replace "variable_name" with the name of the variable to be removed

# Predict 5-year average return
predict_data <- data.frame(FundType = "DE", MorningstarRank = "3-Star", ExpenseRatio = 1.05)
predicted_return <- predict(model_d, newdata = predict_data, interval = "confidence")
predicted_return

# 8
# First, read in the data
auto2 <- read.csv("Auto2.csv", header = TRUE, sep = ";") 

# a

# fit the multiple linear regression model
model <- lm(SpeedQuarterMileMph ~ Price1000s + Horsepower, data = auto2)

# Print the summary of the model
summary(model)

# b

# To plot the standardized residuals against 𝑦- hat.
plot(model, which=1)

# residual plot supports the assumption about 𝜖,
# we see the residuals randomly scattered around zero,
# with no clear patterns or trends. Additionally, the spread of the residuals
# are almost equal across all fitted values of 𝑦- hat.

# c

# Check for outliers using studentized residuals
residuals <- rstudent(model)
residuals
outliers <- which(abs(residuals) > 2)
outliers
subset(auto2, row.names(auto2) %in% outliers)

# Calculate standardized residuals
residuals <- residuals(model)
residuals
std_residuals <- residuals/sd(residuals)
std_residuals 

# Find observations with standardized residuals greater than 2
outliers <- which(abs(std_residuals) > 2)
outliers
subset(auto2, row.names(auto2) %in% outliers)

# Remark, with a threshold of 2, check with studenized residuals gives outlier 
# observation 11, while standardized residual check does not find any. 


# d

# Check for influential observations using Cook's distance and leverage
cooks_distance <- cooks.distance(model)
cooks_distance
leverage <- hatvalues(model)
leverage
influential_obs <- which.max(cooks_distance)
influential_obs
subset(auto2, row.names(auto2) == influential_obs)

# Regarding influential observations, it seems that observation 2 is an influential
# observation according to its high Cook's distance and leverage value. High Cook's
# distance means that removing this observation would cause a significant change in the
# regression coefficients and High Leverage means that this observation has a high potential
# to affect the model's coefficients.

# Exercise 9
# loading data 
lakeland <- read.csv("Lakeland.csv", header = TRUE, sep = ";") 
# a

# Next, fit the logistic regression model
model <- glm(Return ~ GPA + Program, data = lakeland, family = "binomial")
model
# Print the summary of the model
summary(model)

# b
# The interpretation of E(y) when x2=0 is the expected probability of the outcome
# variable y (in this case, returning to Lakeland for the sophomore year) when the
# value of the independent variable x2 (attending the orientation program) is 0. 
# This can also be interpreted as the baseline probability of the outcome variable when
# the value of the independent variable is 0, assuming that all other variables in the model 
# are held constant.

# c
# Compute the estimated logit
# logit(x) =  exp(x)/(1+exp(x))


# e

# estimated probability for a student with a 2.5 grade point 
# average who did not attend the orientation program (x1 = 2.5, x2 = 0):


x <- coef(model)[1] + coef(model)[2]*2.5 + coef(model)[3]*0
 
inv_logit <- exp(x) / (1 + exp(x))
inv_logit
# estimated probability for a student with a 2.5 grade point 
# average who attended the orientation program (x1 = 2.5, x2 = 1):

x <- coef(model)[1] + coef(model)[2]*2.5 + coef(model)[3]*1

inv_logit <- exp(x) / (1 + exp(x))
inv_logit

# f
exp(coef(model)[3])
# The interpretation of the estimated odds ratio depends on the value. For example,
# if the estimated odds ratio is greater than 1, it means that students who attended
# the orientation program have a higher odds of returning to Lakeland for the sophomore
# year compared to students who did not attend the orientation program. If the estimated 
# odds ratio is less than 1, it means that students who attended the orientation program have
# a lower odds of returning to Lakeland for the sophomore year compared to students who did not attend
# the orientation program.

# g
# The estimated odds ratio is greater than 1 (4.762413),
# it suggests that the orientation program has a positive effect on retention.


# Exercise 10

# a
data <- read.csv("ClassicCars.csv", header = TRUE, sep = ";") 

