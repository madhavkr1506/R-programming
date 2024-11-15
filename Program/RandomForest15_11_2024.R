library(randomForest)

data = iris

sample_ = sample(1:nrow(data) , 0.7 * nrow(data))

train_data = data[sample_,]
test_data = data[-sample_,]

rf_model = randomForest(Species ~., data = train_data, ntree = 100)
rf_model

rf_model_predict = predict(rf_model, test_data)

rf_table = table(rf_model_predict, test_data$Species)
rf_table

accuracy = sum(diag(rf_table)) / sum(rf_table)

print(paste("Accuracy: ", accuracy))
