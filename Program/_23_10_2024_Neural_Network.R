data = read.csv("Concrete_Data.csv")

View(data)
str(data)

hist(data$strength)

normalize = function(x){
  return ((x - min(x)) / (max(x) - min(x)))
}

data = as.data.frame(lapply(data, normalize))

summary(data$strength)

library(neuralnet)

sample_ = sample(1:nrow(data), 0.75 * nrow(data))

train_data = data[sample_,]
test_data = data[-sample_,]


model = neuralnet(strength ~. , data = train_data)

plot(model)

model_result = compute(model, test_data[1:8])
model_result
# it returns a list with two components: $neurons, which stores the neurons for each layer in the network, and 
# $net.result, which stores predicted values.


predicted_result = model_result$net.result
predicted_result


cor(predicted_result, test_data$strength)



# make a hidden layer with 5 nodes

model2 = neuralnet(strength ~., data = train_data, hidden = 5)

plot(model2)


model_result2 = compute(model2, test_data[1:8])

predicted_result2 = model_result2$net.result
cor(predicted_result2, test_data$strength)


