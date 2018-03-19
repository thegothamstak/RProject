#Clustering data baseed on its species using K Means

library(iris)

iris_species <- iris
iris_species$class <- NULL

# K Means using R base
kmeans_base <- kmeans(iris_species, 3)

#K Means summary
kmeans_base
kmeans_base$size
kmeans_base$cluster

#CompareK Meansh origninal data
table(iris$class, kmeans_base$cluster)

#Graph - K Means
plot(iris[c("petal.length","petal.width")], col = kmeans_base$cluster)

#Graph - Class
plot(iris[c("petal.length","petal.width")], col = iris$class)
