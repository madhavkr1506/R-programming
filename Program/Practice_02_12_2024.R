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








# Neural Network

data = read.csv("Concrete_Data.csv")
str(data)

library(neuralnet)

summary(data)
normalize = function(x){
  return ((x - min(x)) / (max(x) - min(x)))
}

data = as.data.frame(lapply(data,normalize))

summary(data)

sample_ = sample(1:nrow(data), 0.7 * nrow(data))
train_data = data[sample_,]
test_data = data[-sample_,]

model = neuralnet(strength ~., data = train_data)
plot(model)

compute.model = compute(model, test_data[,-ncol(data)])
compute.model

predicted.result = compute.model$net.result

cor(predicted.result,test_data$strength)




# support model vector

data = read.csv("social.csv")
str(data)

data = data[,3:5]
data$Purchased = factor(data$Purchased,levels = c(0,1))

sample_ = sample(1:nrow(data), 0.7 * nrow(data))

train_data = data[sample_,]
test_data = data[-sample_,]

library(e1071)

model = svm(formula = Purchased~.,data = train_data, type = "C-classification",kernel = "linear")

model.predict = predict(model, test_data[,-3])

library(caret)
confusionMatrix(model.predict, test_data$Purchased)





# knn 

library(ggplot2)

data = as.data.frame(diamonds)

str(data)

library(dplyr)

data_ = data %>% select(carat,depth,table,price,x,y,z)
str(data)

summary(data_)


normalize = function(x){
  return((x - min(x)) / (max(x) - min(x)))
}


norm_data = as.data.frame(lapply(data_[,-c(4)], normalize))
norm_data$cut = data$cut


summary(norm_data)

sample_ = sample(1:nrow(norm_data), 0.7 * nrow(norm_data))
train_data = norm_data[sample_,]
train_label = norm_data[sample_,]$cut
test_data = norm_data[-sample_,]
test_label = norm_data[-sample_,]$cut

library(class)

model = knn(train = train_data, test = test_data, cl = train_label, k = 18)

model.result = table(model,test_label)
model.result

sum(diag(model.result)) / sum(model.result)



# naive bayes

library(e1071)

model = naiveBayes(cut~., data = train_data)
model.predict = predict(model,test_data[,-ncol(norm_data)])
model.predict

confusion_table = table(model.predict, test_label)
confusion_table

sum(diag(confusion_table)) / sum(confusion_table)


# decision tree

library(rpart)
library(rpart.plot)

decision_tree = rpart(cut~., data = train_data, method = "class")
rpart.plot(decision_tree)


decision_tree_predict = predict(decision_tree,test_data, type = "class")

confusion_table = table(decision_tree_predict,test_label)
confusion_table
sum(diag(confusion_table)) / sum(confusion_table)

# association rules

library(arules)

data("Groceries")

str(Groceries)

inspect(Groceries[1:3])
summary(Groceries)

itemFrequency(Groceries[,1:3])
itemFrequencyPlot(Groceries)

itemFrequencyPlot(Groceries, support = 0.1)
itemFrequencyPlot(Groceries, topN = 20)

image(Groceries[1:5])
image(sample(Groceries,100))

apriori(Groceries)

groceryrules = apriori(Groceries, parameter = list(support = 0.006,confidence = 0.25, minlen = 2))

summary(groceryrules)

inspect(groceryrules[1:3])

pot_plants = subset(groceryrules, items %in% "pot plants")
pot_plants

inspect(pot_plants)

whole_milk = subset(groceryrules, items %in% "whole milk")
inspect(whole_milk[1:10])

inspect(sort(whole_milk, by = "lift")[1:5])




# knn

data = iris

summary(data)

data_ = as.data.frame(lapply(data[,-ncol(data)] , scale))

summary(data_)

data_$Species = data$Species

sample_ = sample(1:nrow(data) , 0.7 * nrow(data))
train_data = data_[sample_,-ncol(data_)]
train_label = data_[sample_,]$Species
test_data = data_[-sample_,-ncol(data_)]
test_label = data_[-sample_,]$Species

library(class)

model = knn(train = train_data, test = test_data, cl = train_label, k = 6)
model.result = table(model, test_label)
model.result

sum(diag(model.result)) / sum(model.result)


# ann on iris data set

data = iris
data$Species = as.integer(as.factor(data$Species))
sample_ = sample(1:nrow(data), 0.7 * nrow(data))
train_data = data[sample_,]
test_data = data[-sample_,]

library(neuralnet)

model = neuralnet(formula = Species~., data = train_data, hidden = 5)
model.result = compute(model, test_data[,-ncol(data)])
model.result
predicted.result = model.result$net.result

cor(predicted.result, test_data$Species)

plot(model)


# k mean clustering;

data_ = data[,-ncol(data)]
data_


library(cluster)

model = kmeans(data_, center = 3, nstart = 20)
model


model$cluster
model$centers

confusion_table = table(data$Species, model$cluster)
confusion_table
sum(diag(confusion_table)) / sum(confusion_table)

ykmeans = model$cluster


clusplot(data[,c("Sepal.Length","Sepal.Width")],
         ykmeans,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste("K Mean Clustering"),
         xlab = "Sepal.Length",
         ylab = "Sepal.Width",
         )



# polynomial regression

data = read.csv("Position_Salaries.csv")
head(data)
str(data)

library(dplyr)
data_ = data %>% select(Level, Salary)
head(data_)


linear.model = lm(Salary~Level, data = data_)
summary(linear.model)

plot(data_$Level, data_$Salary, main = "Linear Model", xlab = "Level", ylab = "Salary",
     pch = 18, col = "blue")
abline(linear.model,col = "red")

data_$Level2 = data_$Level^2
data_$Level3 = data_$Level^3
data_$Level4 = data_$Level^4

poly.model = lm(Salary~.,data = data_)
library(ggplot2)

ggplot() + geom_point(data = data_, aes(x = Level3, y = Salary), colour = "red") + 
  geom_line(data = data_, aes(x = Level3, y = predict(poly.model, newdata = data_)),colour = "green") + 
  ggtitle("Polynomial Regression") + xlab("Level") + ylab("Salary")


ggplot() + geom_point(data = data_, aes(x = Level, y = Salary), color = "orange") + 
  geom_line(data = data_, aes(x = Level, y = predict(poly.model, newdata = data_)), colour = "red")


predict(linear.model, data.frame(Level = 7))
predict(poly.model, data.frame(Level = 7,Level2 = 7^2, Level3 = 7^3, Level4 = 7^4))



