# clustering

# k-means

data = iris
data_ = iris[,-ncol(data)]

library(cluster)

kmeans.re = kmeans(data_,centers = 3,nstart = 20)

kmeans.re$cluster
kmeans.re$centers

confusion_table = table(data$Species, kmeans.re$cluster)
accuracy = sum(diag(confusion_table)) / sum(confusion_table)

print(paste("Accuracy: ",accuracy))


plot(data_[c("Sepal.Length","Sepal.Width")],
     col = kmeans.re$cluster,
     main = "K Means With 3 Cluster")


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


# diamond data set: 

library(ggplot2)
data = as.data.frame(diamonds)


data_ = data[sapply(data,is.numeric)]
View(data_)
data_ = data_[1:100,]



summary(data_)

scale_data = scale(data_)
summary(scale_data)

library(cluster)

kmeans.re = kmeans(scale_data, centers = 5, nstart = 20)
kmeans.re


kmeans.re$cluster
kmeans.re$centers

confusion_table = table(data$cut[1:100], kmeans.re$cluster)
confusion_table

accuracy = sum(diag(confusion_table)) / sum(confusion_table)

print(accuracy)

plot(data_[,c("carat","price")], col = kmeans.re$cluster, main = "K Means With 3 Cluster")

ykmeans = kmeans.re$cluster
clusplot(data_[,c("carat","price")],
         ykmeans,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste("Cluster Diamonds"),
         xlab = "Price",
         ylab = "carat"
)


# cluster dendrogram

d = dist(scale_data, method = "euclidean")
hfit = hclust(d)
plot(hfit)

graph = cutree(hfit, k = 4)
graph

rect.hclust(hfit, k = 4, border = "red")


# random forest

library(ggplot2)
data = as.data.frame(diamonds)
data = data[1:1000,]

sample_ = sample(1:nrow(data), 0.78 * nrow(data))

train_data = data[sample_,]
test_data = data[-sample_,]

library(randomForest)

rf.model = randomForest(cut ~., data = train_data, ntree = 100)
rf.model

rf.model.predict = predict(rf.model,test_data)
rf.model.predict

confusion_table = table(rf.model.predict,test_data$cut)
confusion_table

accuracy = sum(diag(confusion_table)) / sum(confusion_table)
accuracy



# market basket analysis

library(arules)

data("Groceries")

summary(Groceries)
str(Groceries)

inspect(Groceries[1:5])

itemFrequency(Groceries[,1:3])
itemFrequencyPlot(Groceries)
itemFrequencyPlot(Groceries,support = 0.1)
itemFrequencyPlot(Groceries, topN = 20)



image(Groceries[1:3])
image(sample(Groceries,100))


apriori(Groceries)


groceryrules = apriori(Groceries, parameter = list(support = 0.006, confidence = 0.25, minlen = 2))

inspect(groceryrules[1:3])
groceryrules

summary(groceryrules)


inspect(groceryrules[1:10], lift = 0.5)
inspect(sort(groceryrules, by = "lift")[1:5])

berryrules = subset(groceryrules,items %in% "berries")
inspect(berryrules)

sodarules = subset(groceryrules, rhs %in% "soda")
inspect(sodarules)

top.soda.rules = head(sort(sodarules, by = "lift"),5)
inspect(top.soda.rules)


write(groceryrules, "groceryrules_03_12_24.csv", sep = ",", quote = TRUE, row.names = FALSE)

groceryrules_df = read.csv("groceryrules_03_12_24.csv")
str(groceryrules_df)


