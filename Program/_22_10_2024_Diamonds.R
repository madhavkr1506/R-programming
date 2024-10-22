# naive bayes

library(ggplot2)
data("diamonds")
data = as.data.frame(diamonds)

head(data)

data$cut = as.factor(data$cut)
data$color = as.factor(data$color)
data$clarity = as.factor(data$clarity)

data = data[,c("carat","cut","color","clarity","depth","table","price","x","y","z")]
head(data)

sample_ = sample(1:nrow(data),0.75*nrow(data))
train_data = data[sample_,]
test_data = data[-sample_,]

library(e1071)
model_cut = naiveBayes(cut ~ carat + depth + table + price + x +y + z, data = train_data)
model_cut_predict = predict(model_cut, test_data)
model_cut_predict

model_cut_confusion_table = table(model_cut_predict, test_data$cut)
model_cut_confusion_table

accuracy = sum(diag(model_cut_confusion_table)) / sum(model_cut_confusion_table)
print(paste("Accuracy: ",accuracy))


model_color = naiveBayes(color ~ carat + depth + table + price + x + y + z, data = train_data)
model_color_predict = predict(model_color, test_data)


model_color_predict

model_color_confusion_table = table(model_color_predict, test_data$color)
model_color_confusion_table

accuracy = sum(diag(model_color_confusion_table)) / sum(model_color_confusion_table)
print(paste("Accuracy: ",accuracy))



model_clarity = naiveBayes(clarity ~ carat + depth + table + price, data = train_data)
model_clarity_predict = predict(model_clarity, test_data)
model_clarity_predict

model_clarity_confusion_table = table(model_clarity_predict, test_data$color)
model_clarity_confusion_table

accuracy = sum(diag(model_clarity_confusion_table)) / sum(model_clarity_confusion_table)
print(paste("Accuracy: ",accuracy))


# decision tree

library(ggplot2)
data("diamonds")
data = as.data.frame(diamonds)

head(data)

data$cut = as.factor(data$cut)
data$color = as.factor(data$color)
data$clarity = as.factor(data$clarity)

sample_ = sample(1:nrow(data), 0.8 * nrow(data))
train_data = data[sample_,]
test_data = data[-sample_,]

target = cut ~ x + y + z + price + depth + table + carat + clarity + color

library(rpart)
library(rpart.plot)

tree = rpart(target, data = train_data,method = "class")
rpart.plot(tree)



# regression analysis : linear regression

library(ggplot2)
data("mtcars")
View(mtcars)

summary(mtcars)
nrow(mtcars)



mtcars$hp2 = mtcars$hp^2
mtcars$hp3 = mtcars$hp^3
model.poly = lm(formula = mpg ~ hp + hp2 + hp3, data = mtcars)
summary(model.poly)

View(mtcars)

ggplot(data = mtcars, aes(x = hp, y = mpg)) + geom_point(col = "black") + geom_line(aes(y = predict(model.poly)), col = "red") + ggtitle("Polynomial Regression") + xlab("hp") + ylab("mpg")



model_lin = lm(formula = mpg ~ hp, data = mtcars)
summary(model_lin)

ggplot(data = mtcars, aes(x = hp, y = mpg)) + geom_point(col = "black") + geom_line(aes(y = predict(model_lin)), col = "red") + ggtitle("Linear Regression") + xlab("hp") + ylab("mpg")


