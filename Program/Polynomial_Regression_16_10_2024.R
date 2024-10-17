data = read.csv("Position_Salaries.csv")
View(data)


data$Position<-NULL

View(data)

lin_reg = lm(formula = Salary ~., data = data)
summary(lin_reg)


data$level2 = data$Level^2
data$level3 = data$Level^3
data$level4 = data$Level^4
data$level5 = data$Level^5

data


poly_reg = lm(formula = Salary ~., data = data)


summary(poly_reg)

data$Level

data$level2
data$level3
data$level4
data$level5

library(ggplot2)


ggplot() + geom_point(aes(x = data$level, y = data$Salary),
                      )


# decision tree, linear, polynomial, knn, naive bayes : syllabus for ca2