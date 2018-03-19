#Predicts the market value of a player by relating it with Overall, Potential and Age.

#Reading data from a csv file into the data frame
football <- read.csv("CompleteDataset.csv")

#Turning Value attribute from String into Numeric and eliminating all the non-numeric characters
for(i in football){
  football$Value <- gsub("[^0-9\\.]", "", football$Value)
  football$Wage <- gsub("[^0-9\\.]", "", football$Wage)
  football$Value <- as.numeric(football$Value)
  football$Wage <- as.numeric(football$Wage)
}

#Using R's base linear regression function
fit_base <- lm(Value ~ Overall + Potential + Age, data = football)

#Summary of the trained data
summary(fit_base)

#Prediction data frame
prediction_data <- data.frame(Overall = 80, Potential = 90, Age = 20)

#Prediction with R's base regression
predict(fit_base, prediction_data)
