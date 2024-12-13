install.packages("rpart")
install.packages("rpart.plot")

library(rpart)
library(rpart.plot)

data(iris)
str(iris)

# set.seed(42) 

indexes<-sample(1:nrow(iris),0.7*nrow(iris))

iris_train<-iris[indexes,]
View(iris_train)
iris_test<-iris[-indexes,]

target = Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width

tree = rpart(target, data = iris_train, method = "class")

rpart.plot(tree)


predictions = predict(tree, iris_test, type = "class")

confusion_matrix = table(iris_test$Species, predictions)

print(confusion_matrix)

accuracy = sum(diag(confusion_matrix)) / sum(confusion_matrix)


print(paste("Accuracy: ",round(accuracy , 4)))



summary(iris)
























# intrusion detection dataset

data<-read.csv("intrusion_detection_data.csv")
View(data)
data$protocol_type<-as.integer(as.factor(data$protocol_type))
View(data)

data$service<-NULL
data$flag<-NULL

indexes = sample(1:nrow(data),0.7 * nrow(data))
traindata<-data[indexes,]
testdata<-data[-indexes,]

target = class ~.

library(rpart)
library(rpart.plot)


tree = rpart(target, data = traindata, method = "class")

rpart.plot(tree)

predictions<- predict(tree, testdata, type = "class")

confusion_matrix = table(testdata$class,predictions)

print(confusion_matrix)

accuracy <- sum(diag(confusion_matrix)) / sum(confusion_matrix)

print(paste("Accuracy: ",round(accuracy,4)))
