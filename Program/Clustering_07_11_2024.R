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


plot(data_[c("Sepal.Length","Sepal.Width")],
     col = kmeans.re$cluster,
     main = "K-means with 3 clusters")


points(kmeans.re$centers[,c("Sepal.Length","Sepal.Width")],
       col = 1:3,
       pch = 8, cex = 3)

ykmeans = kmeans.re$cluster

clusplot(data_[,c("Sepal.Length","Sepal.Width")],
         ykmeans,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste("Cluster Iris"),
         xlab = "Sepal.Length",
         ylab = "Sepal.Width"
)
