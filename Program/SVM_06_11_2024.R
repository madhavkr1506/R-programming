data = read.csv("social.csv")
data = data[3:5]
data$Purchased = factor(data$Purchased, levels = c(0,1))
View(data)

sample_ = sample(1:nrow(data), 0.75 * nrow(data))

train_data = data[sample_,]
test_data = data[-sample_,]

library(e1071)

classify = svm(formula = Purchased ~., data = train_data, type = "C-classification", kernel = "linear")

pred_model = predict(classify, test_data[,-3])
pred_model

library(caret)

confusionMatrix(pred_model, test_data$Purchased)


# what is scale: scale is a generic function whose default method centers and /or scales the columns of numeric matrix.

# normalization : it aims for specific range (usually 0 - 1) and change the shape of data distribution.

# scaling:  adjust the spread or variability of the data without necessarily aiming for specific range. it focuses on making features equally important for machine algorithm.



# IRIS : SVM

data = as.data.frame(iris)

data$Species = as.integer(as.factor(data$Species))


View(data)

sample_ = sample(1:nrow(data), 0.75 * nrow(data))

train_data = data[sample_,]
test_data = data[-sample_,]

library(e1071)

classify = svm(formula = Species ~., data = train_data, type = "C-classification", kernel = "linear")

pred_model = predict(classify, test_data[,-ncol(data)])
pred_model

library(caret)

confusionTable = table(pred_model, test_data[,ncol(data)])
confusionTable

print(paste("Accuracy: ",((sum(diag(confusionTable))) / sum(confusionTable))))
confusionMatrix(confusionTable)
