data = read.csv("autompg.csv")
View(data)

sum(is.na(data$mpg))
sum(is.na(data$displacement))
sum(is.na(data$horsepower))
sum(is.na(data$weight))
sum(is.na(data$acceleration))
sum(is.na(data$model.year))

typeof(data$mpg)
typeof(data$displacement)
typeof(data$horsepower)
typeof(data$weight)
typeof(data$acceleration)
typeof(data$model.year)

data$horsepower[data$horsepower == "?"] = NA
typeof(data$horsepower)
data$horsepower = as.numeric(data$horsepower)

data$horsepower[is.na(data$horsepower)] = mean(data$horsepower, na.rm = TRUE)

data$weight = as.numeric(data$weight)


mpg<-data$mpg
horsepower<-data$horsepower
weight<-data$weight
acceleration<-data$acceleration
displacement<-data$displacement
model_year<-data$model.year


model.hp = lm(mpg ~ horsepower)
summary(model.hp)

sum(is.na(mpg))
sum(is.na(horsepower))

typeof(horsepower)

plot(x = horsepower, y = mpg, main = "MPG vs HorsePower", xlab = "HorsePower", ylab = "MPG", pch = 17, col = "blue")
abline(model.hp, col = "red")

typeof(weight)

model_wt = lm(mpg ~ weight)
plot(x = weight, y = mpg, main = "MPG vs Weight", xlab = "Weight", ylab = "MPG", pch = 17,  col = "blue")
abline(model_wt, col = "red")


model.acc = lm(mpg ~ acceleration)
plot(x = acceleration, y = mpg, main = "MPG vs Acceleration", xlab = "Acceleration", ylab = "MPG", pch = 17,  col = "blue")
abline(model.acc, col = "red")


model.dis = lm(mpg ~ displacement)
plot(x = displacement, y = mpg, main = "MPG vs Displacement", xlab = "Displacement", ylab = "MPG", pch = 17,  col = "blue")
abline(model.dis, col = "red")

model.mfy = lm(mpg ~ model_year)
plot(x = model_year, y = mpg, main = "MPG vs ModelYear", xlab = "ModelYear", ylab = "MPG", pch = 17,  col = "blue")
abline(model.mfy, col = "red")
