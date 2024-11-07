library(cluster)

data = as.data.frame(iris)
data_ = iris[,-ncol(data)]

kmeans.re = kmeans(data_,centers = 3, nstart = 20)

kmeans.re

kmeans.re$cluster
kmeans.re$centers


confusionTable = table(data$Species, kmeans.re$cluster)
confusionTable

accuracy = sum(diag(confusionTable)) / sum(confusionTable)


print(paste("Accuracy: ",accuracy))
