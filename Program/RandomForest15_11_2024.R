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


library(ggplot2)
conf_matrix = as.data.frame(rf_table)
colnames(conf_matrix) = c("Actual", "Predicted", "Count")

ggplot(data = conf_matrix, aes(x = Predicted, y = Count, fill = Actual)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Confusion Matrix for Random Forest", 
       x = "Predicted", 
       y = "Count") +
  scale_fill_discrete(name = "Actual Species") +
  theme_minimal()



data = ("diamonds")
data = as.data.frame(diamonds)

sample_ = sample(1:nrow(data) , 0.7 * nrow(data))

train_data = data[sample_,]
test_data = data[-sample_,]

rf_model = randomForest(cut ~., data = train_data, ntree = 100)
rf_model

rf_model_predict = predict(rf_model, test_data)

rf_table = table(rf_model_predict, test_data$cut)
rf_table

accuracy = sum(diag(rf_table)) / sum(rf_table)

print(paste("Accuracy: ", accuracy))

