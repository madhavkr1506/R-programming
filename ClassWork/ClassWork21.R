# Access csv file using sql queries : 


getwd()
setwd("C:/Users/madha/OneDrive/Documents/R programming/ClassWork")
getwd()
readdata1<-read.csv("diabetes.csv")
View(readdata1)

library(sqldf)
sqldf("select * from readdata1")

sqldf("select * from readdata1 where Glucose = 85")


sqldf("select * from readdata1 where Glucose = 85 and insulin = 49")

sqldf("select Glucose from readdata1")

sqldf("select * from readdata1")
sqldf("select Glucose, BloodPressure from readdata1 where insulin >= 30")


sqldf("select * from readdata1 where Glucose in(115,125)")


sqldf("select count(Pregnancies) from readdata1")


sqldf("select Pregnancies, count(Pregnancies) from readdata1 group by Pregnancies")

sqldf("select * from readdata1")


