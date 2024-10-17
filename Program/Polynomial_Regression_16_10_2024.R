
data<- read.csv("Position_Salaries.csv")
View(data)
data$Position <- NULL


lin_reg <- lm(formula=Salary ~.,data = data)
summary(lin_reg)



data$level2<- data$Level^2
data$level3<- data$Level^3
data$level4<- data$Level^4

poly_reg<- lm(formula = Salary~.,data = data)
summary(poly_reg)

data$level3
data$level4


library(ggplot2)

ggplot() + geom_point(aes(x=data$Level,y=data$Salary),colour = 'red') + 
  geom_line(aes(x=data$Level,y=predict(lin_reg,newdata = data)),colour = 'blue')+
  ggtitle('Truth or Bluff(Linear Regression)') + xlab('Level') + ylab('Salary')



ggplot() + geom_point(aes(x=data$level2,y=data$Salary),color = "purple") +
  geom_line(aes(x=data$level2,y=predict(poly_reg,newdata = data)),color="green")+
  ggtitle('Polynomial linear regression') + xlab('Level') + ylab('Salary')

ggplot() + geom_point(aes(x=data$level3,y=data$Salary),color = "purple") +
  geom_line(aes(x=data$level3,y=predict(poly_reg,newdata = data)),color="green")+
  ggtitle('Polynomial linear regression') + xlab('Level') + ylab('Salary')

ggplot() + geom_point(aes(x=data$level4,y=data$Salary),color = "purple") +
  geom_line(aes(x=data$level4,y=predict(poly_reg,newdata = data)),color="green")+
  ggtitle('Polynomial linear regression') + xlab('Level') + ylab('Salary')


ggplot() + geom_point(aes(x=data$Level,y=data$Salary),color = "purple") +
  geom_line(aes(x=data$Level,y=predict(poly_reg,newdata = data)),color="green")+
  ggtitle('Polynomial linear regression') + xlab('Level') + ylab('Salary')

summary(poly_reg)


x_grid = seq(min(data$Level),max(data$Level),0.1)
ggplot() + geom_point(aes(x=data$Level,y=data$Salary),colour='pink')+
  geom_line(aes(x = x_grid,y=predict(poly_reg,newdata=data.frame(Level=x_grid,
                                                                 level2=x_grid^2,level3=x_grid^3,level4=x_grid^4)))) + ggtitle('Smothning curve')+xlab('Level')+ylab('Salary')



predict(lin_reg,data.frame(Level=7))



predict(poly_reg,data.frame(Level=7,level2=7^2,level3=7^3,level4=7^4))
