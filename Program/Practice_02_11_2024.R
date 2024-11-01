# KNN

library(mlbench)
data("Sonar")
data = as.data.frame(Sonar)

head(data)

normalize = function(x){
  return ((x - min(x)) / (max(x) - min(x)))
}

data_norm = as.data.frame(lapply(data[,-ncol(data)],normalize))

head(data_norm)

data_norm$Class = data$Class

sample_ = sample(1:nrow(data_norm) , 0.7 * nrow(data_norm))

train_data = data_norm[sample_,-ncol(data_norm)]
test_data = data_norm[-sample_,-ncol(data_norm)]

train_label = data_norm[sample_,ncol(data_norm)]
test_label = data_norm[-sample_,ncol(data_norm)]

library(class)
library(caret)
library(gmodels)

pred_model = knn(train = train_data, test = test_data, cl = train_label, k = 6)

eval_model = confusionMatrix(pred_model, test_label)
eval_model

CrossTable(x = pred_model, y = test_label, prop.chisq = FALSE)


# NAIVE BAYES


library(mlbench)
data("Sonar")
data = as.data.frame(Sonar)

head(data)

sample_ = sample(1:nrow(data), 0.7 * nrow(data))

train_data = data[sample_,]
test_data = data[-sample_,]

library(e1071)

model = naiveBayes(Class ~., data = train_data)

pred_model = predict(model, test_data)

pred_model

library(caret)
library(gmodels)

confusionMatrix(pred_model, test_data$Class)

CrossTable(x = pred_model, y = test_data$Class, prop.chisq = FALSE)



# DECISION TREE

library(ggplot2)

data = as.data.frame(diamonds)

head(data)
data$color = as.integer(as.factor(data$color))
data$clarity = as.integer(as.factor(data$clarity))

sample_ = sample(1:nrow(data) , 0.7 * nrow(data))

train_data = data[sample_,]
test_data = data[-sample_,]

library(rpart)
library(rpart.plot)

model = rpart(cut ~., data = train_data, method = "class")
rpart.plot(model)

pred_model = predict(model, test_data, type = "class")

pred_model

library(caret)

confusionMatrix(pred_model, test_data$cut)

library(gmodels)

CrossTable(x = pred_model, y = test_data$cut, prop.chiq = FALSE)
