# Decision tree

library(rpart)
library(rpart.plot)


data <- as.data.frame(Titanic)
str(data)

data$Survived <- factor(data$Survived)

data$Class <- factor(data$Class)


sample_ <- sample(1:nrow(data), 0.7 * nrow(data))
data_train <- data[sample_, ]
data_test <- data[-sample_, ]


target <- Survived ~ Class + Sex + Age


tree <- rpart(target, data = data_train, method = "class")


rpart.plot(tree)


predict_ <- predict(tree, data_test, type = "class")


confusion_matrix <- table(data_test$Survived, predict_)


print(confusion_matrix)


accuracy <- sum(diag(confusion_matrix)) / sum(confusion_matrix)
print(paste("Accuracy: ", round(accuracy, 4)))




# ANN

data = read.csv("C:\\Users\\madha\\Documents\\CA2\\Prostate_cancer.csv")

View(data)
str(data)

head(data)

data$X = NULL

diagnosis_result = as.integer(as.factor(data$diagnosis_result))



normalize = function(x){
  return ((x - min(x)) / (max(x) - min(x)))
}

data = as.data.frame(lapply(data[,-c(1,2)], normalize))
data$diagnosis_result = diagnosis_result

head(data)
summary(data)

library(neuralnet)

sample_ = sample(1:nrow(data), 0.70 * nrow(data))

train_data = data[sample_,]
test_data = data[-sample_,]


model = neuralnet(diagnosis_result ~. , data = train_data)

plot(model)

model_result = compute(model, test_data[,-ncol(data)])
model_result


predicted_result = model_result$net.result
predicted_result


cor(predicted_result, test_data$diagnosis_result)
