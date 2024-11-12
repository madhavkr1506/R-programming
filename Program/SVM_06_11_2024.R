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







# Load necessary libraries
library(e1071)  # For SVM functions
library(caret)  # For data splitting and preprocessing

# Load the dataset
data <- read.csv("Sleep_health_and_lifestyle_dataset.csv")

# Data preprocessing
# Remove columns that may not be helpful (Person ID)
data$Person_ID <- NULL
data$Blood.Pressure = NULL

# Encode categorical variables
data$Gender <- as.factor(data$Gender)
data$BMI.Category <- as.factor(data$BMI.Category)
data$Sleep.Disorder <- as.factor(data$Sleep.Disorder)

# Check for missing values and handle if any
# data[is.na(data)] <- some_value  # Fill missing values if necessary

# Split the data into training and testing sets
set.seed(123)
trainIndex <- sample(1:nrow(data), 0.75 * nrow(data))
trainData <- data[trainIndex,]
testData <- data[-trainIndex,]

# Train an SVM model
svm_model <- svm(Sleep.Disorder ~ ., data = trainData, type = "C-classification", kernel = "linear")

# Predict on test data
predictions <- predict(svm_model, testData)

# Evaluate the model
conf_matrix <- confusionMatrix(predictions, testData$Sleep.Disorder)
print(conf_matrix)




# Load necessary libraries
library(e1071)  # For Naive Bayes function
library(caret)  # For data splitting and evaluation

# Load the dataset
data <- read.csv("path_to_your_file.csv")

# Data preprocessing
# Remove columns that may not be helpful (Person ID and Blood Pressure)
data$Person_ID <- NULL
data$Blood.Pressure <- NULL

# Encode categorical variables
data$Gender <- as.factor(data$Gender)
data$BMI_Category <- as.factor(data$BMI_Category)
data$Sleep_Disorder <- as.factor(data$Sleep_Disorder)

# Split the data into training and testing sets
set.seed(123)
trainIndex <- createDataPartition(data$Sleep_Disorder, p = 0.8, list = FALSE)
trainData <- data[trainIndex,]
testData <- data[-trainIndex,]

# Train a Naive Bayes model
nb_model <- naiveBayes(Sleep_Disorder ~ ., data = trainData)

# Predict on test data
predictions <- predict(nb_model, testData)

# Evaluate the model
conf_matrix <- confusionMatrix(predictions, testData$Sleep_Disorder)
print(conf_matrix)




# Load necessary libraries
library(rpart)   # For Decision Tree functions
library(caret)   # For data splitting and evaluation
library(rpart.plot) # For visualizing the tree

# Load the dataset
data <- read.csv("path_to_your_file.csv")

# Data preprocessing
# Remove columns that may not be helpful (Person ID and Blood Pressure)
data$Person_ID <- NULL
data$Blood.Pressure <- NULL

# Encode categorical variables
data$Gender <- as.factor(data$Gender)
data$BMI_Category <- as.factor(data$BMI_Category)
data$Sleep_Disorder <- as.factor(data$Sleep_Disorder)

# Split the data into training and testing sets
set.seed(123)
trainIndex <- createDataPartition(data$Sleep_Disorder, p = 0.8, list = FALSE)
trainData <- data[trainIndex,]
testData <- data[-trainIndex,]

# Train a Decision Tree model
tree_model <- rpart(Sleep_Disorder ~ ., data = trainData, method = "class")

# Visualize the Decision Tree
rpart.plot(tree_model)

# Predict on test data
predictions <- predict(tree_model, testData, type = "class")

# Evaluate the model
conf_matrix <- confusionMatrix(predictions, testData$Sleep_Disorder)
print(conf_matrix)

