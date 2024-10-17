# decision tree on Sonar data set


library(mlbench)
data("Sonar")
data = as.data.frame(Sonar)
View(data)

summary(data)

str(data)
nrow(data)
ncol(data)

library(rpart)
library(rpart.plot)

sample_ = sample(1:nrow(data) , 0.8 * nrow(data))

train_data = data[sample_,]
test_data = data[-sample_,]

target = Class~.

tree = rpart(target, data = train_data, method = "class")

rpart.plot(tree)

predict_ = predict(tree, test_data,type = "class")
predict_


confusion_table = table(predict_, test_data$Class)
confusion_table

accuracy = sum(diag(confusion_table)) / sum(confusion_table)

print(paste("Accuracy: ",accuracy))





# knn on Sonar data set


data("Sonar")
data = as.data.frame(Sonar)

sample_ = sample(1:nrow(data), 0.7 * nrow(data))

train_data = data[sample_,-ncol(data)]
test_data = data[-sample_,-ncol(data)]

train_label = data[sample_,ncol(data)]
test_label = data[-sample_,ncol(data)]

library(class)
library(caret)
library(gmodels)


model = knn(train = train_data, test = test_data, cl = train_label, k = 6)
confusion_table = table(model, test_label)
confusion_table

confusionMatrix(confusion_table)



# naive bayes on Sonar data set


data("Sonar")
data = as.data.frame(Sonar)

sample_ = sample(1:nrow(data), 0.80 * nrow(data))

train_data = data[sample_,]
test_data = data[-sample_,]

target = Class~.

library(e1071)

model = naiveBayes(target, data = train_data)

predict_ = predict(model, test_data)
predict_

confusion_table = table(test_data$Class, predict_)
confusion_table

confusionMatrix(confusion_table)
