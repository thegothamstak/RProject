#Predicting the species of the iris flower.

library(iris)

#Using R's base linear regression function
fit_base <- lm(class ~ petal.length + petal.width + sepal.length + sepal.width, data = iris)

#Summary of regression
summary(fit_base)

#Prediction data frame
prediction_data <- data.frame(petal.length = 5.0, petal.width = 3.0, sepal.length = 2.0, sepal.width = 0.2)

#Prediction with R's base regression
predict_base <- predict(fit_base, prediction_data)
