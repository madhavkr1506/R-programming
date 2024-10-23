library(MASS)
data(Boston)

data = as.data.frame(Boston)

str(data)
head(data)
summary(data)

normalize = function(x){
  return ((x - min(x)) / (max(x) - min(x)))
}

data = as.data.frame(lapply(data, normalize))
summary(data)

library(neuralnet)
sample_ = sample(1:nrow(data), 0.75 * nrow(data))
train_data = data[sample_,]
test_data = data[-sample_,]

model = neuralnet(medv ~., data = train_data)
plot(model)

model_result = compute(model, test_data[,-ncol(data)])
model_result

predicted_result = model_result$net.result

cor(predicted_result, test_data$medv)


