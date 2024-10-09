install.packages("rpart")
install.packages("rpart.plot")

library(rpart)
library(rpart.plot)

data(iris)
str(iris)

set.seed(42)

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
