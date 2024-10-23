data = read.csv("wisc_bc_data.csv")
str(data)
head(data)
data$id = NULL

head(data)

summary(data)

normalize = function(x){
  return ((x - min(x)) / (max(x) - min(x)))
}

label = data$diagnosis

data = as.data.frame(lapply(data[,-c(1)],normalize))
summary(data)

data$diagnosis = label
head(data)

library(e1071)

sample_ = sample(1:nrow(data), 0.75 * nrow(data))
train_data = data[sample_,]
test_data = data[-sample_,]



model = naiveBayes(diagnosis ~., data = train_data)
predict_model = predict(model, test_data[,-ncol(data)])
predict_model

confusion_table = table(predict_model, test_data$diagnosis)
confusion_table

accuracy = sum(diag(confusion_table)) / sum(confusion_table)
print(paste("Accuracy: ", accuracy))


