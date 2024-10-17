# decision tree on diamonds data set


library(ggplot2)
data = as.data.frame(diamonds)

data$color = NULL
data$clarity = NULL

target = cut ~.

sample_ = sample(1:nrow(data),0.8 * nrow(data))

train_data = data[sample_,]
test_data = data[-sample_,]

library(rpart)
library(rpart.plot)

tree = rpart(target, train_data, method = "class")

tree

rpart.plot(tree)

predict_ = predict(tree, test_data, type = "class")

confusion_table = table(test_data$cut, predict_)
confusion_table

accuracy = sum(diag(confusion_table)) / sum(confusion_table)

print(paste("Accuracy: ",accuracy))



# knn on diamonds data set


library(ggplot2)

data = as.data.frame(diamonds)

data$color = NULL
data$clarity = NULL

label = data$cut

data$cut = NULL

sample_ = sample(1:nrow(data), 0.7 * nrow(data))

train_data = data[sample_,]
test_data = data[-sample_,]

train_lable = label[sample_]
test_label = label[-sample_]

library(class)
library(caret)
library(gmodels)

knn_model = knn(train = train_data, test = test_data, cl = train_lable, k = 21)

knn_model

confusion_table = table(test_label, knn_model)
confusion_table

accuracy = sum(diag(confusion_table)) / sum(confusion_table)
print(paste("Accuracy: ",accuracy))



# naive bayes on diamonds data set

library(e1071)
library(ggplot2)

data = as.data.frame(diamonds)

data$color = NULL
data$clarity = NULL
data$cut = NULL


label = data$cut
data$cut = label


sample_ = sample(1:nrow(data), 0.7 * nrow(data))

train_data = data[sample_,]

test_data = data[-sample_,]

target = cut~.

model = naiveBayes(target, data = train_data)
predict_ = predict(model, test_data)
predict_


confusion_table = table(test_data$cut, predict_)
confusion_table


accuracy = sum(diag(confusion_table)) / sum(confusion_table)
print(paste("Accuracy: ",accuracy))

