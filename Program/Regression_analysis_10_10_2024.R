x = c(1,2,3,4,5)
y = c(3,4,2,4,5)


model = lm(y ~ x)
summary(model)

r_squared = summary(model)$r.squared

print(paste("R squared: ",r_squared))

plot(x,y,main = "Linear Regression", xlab = "x", ylab = "y", pch = 17, col = "blue")

abline(model, col = "red")


# regression analysis on iris data set

sepal_length <- iris$Sepal.Length
sepal_width <- iris$Sepal.Width
petal_length <- iris$Petal.Length
petal_width <- iris$Petal.Width

# 1

model = lm(sepal_length ~ sepal_width)
summary(model)


plot(sepal_width,sepal_length,main = "Linear Regression",xlab = "x",
     ylab = "y", pch = 17, col = "blue")

abline(model, col = "red")

# 2
model = lm(sepal_length ~ petal_length)
summary(model)


plot(petal_length,sepal_length,main = "Linear Regression",xlab = "x", ylab = "y", pch = 17, col = "blue")

abline(model, col = "red")

# 3
model = lm(sepal_length ~ petal_width)
summary(model)


plot(petal_width,sepal_length,main = "Linear Regression",xlab = "x", ylab = "y", pch = 17, col = "blue")

abline(model, col = "red")

# 4
model = lm(sepal_width ~ petal_length)
summary(model)


plot(petal_length,sepal_width,main = "Linear Regression",xlab = "x", ylab = "y", pch = 17, col = "blue")

abline(model, col = "red")

# 5
model = lm(sepal_width ~ petal_width)
summary(model)


plot(petal_width,sepal_width,main = "Linear Regression",xlab = "x", ylab = "y", pch = 17, col = "blue")

abline(model, col = "red")

# 6
model = lm(petal_length ~ petal_width)
summary(model)


plot(petal_width,petal_length,main = "Linear Regression",xlab = "x", ylab = "y", pch = 17, col = "blue")

abline(model, col = "red")





