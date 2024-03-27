# this package enables the user to create sophisticated visualizations with little code using the grammer or graphics

getwd()
setwd("C:/Users/madha/OneDrive/Documents/R programming/ClassWork")
getwd()

df <- read.csv(file.choose())

summary(df)

str(df)

plot(df)

library(ggplot2)

ggplot(df,aes(Age,BMI))+geom_point(color = "skyblue")+geom_smooth(method = "lm",formula = y~x-1,se = 0,color = "skyblue")+
  geom_point(aes(y = Pregnancies),color = "red")+geom_smooth(aes(y = Pregnancies),method = "lm",formula = y~x-1,se=0,color = "red")+
  geom_point(aes(y = BloodPressure),color = "green")+geom_smooth(aes(y = BloodPressure),method = "lm",formula = y~x-1,se = 0,color = "green")+theme_classic()+
  labs(title = "Diabetes",subtitle = "BMI vs BloodPressure",caption = "by Madhav Kumar",x = "Age",y = "Body Mass Index")



