getwd()
setwd("C:/Users/madha/OneDrive/Documents/R programming/ClassWork")

getwd()

readdata<-read.csv("diabetes.csv")
View(readdata)

print(nrow(readdata))
print(ncol(readdata))
print(head(readdata))
print(tail(readdata))

print(min(readdata$BloodPressure))
print(max(readdata$BloodPressure))
print(mean(readdata$BloodPressure))
print(median(readdata$BloodPressure))

print(min(readdata$Glucose))
print(max(readdata$Glucose))
print(mean(readdata$Glucose))
print(median(readdata$Glucose))


print(min(readdata$Pregnancies))
print(max(readdata$Pregnancies))
print(mean(readdata$Pregnancies))
print(median(readdata$Pregnancies))

print(min(readdata$SkinThickness))
print(max(readdata$SkinThickness))
print(mean(readdata$SkinThickness))
print(median(readdata$SkinThickness))

print(min(readdata$Insulin))
print(max(readdata$Insulin))
print(mean(readdata$Insulin))
print(median(readdata$Insulin))


print(min(readdata$BMI))
print(max(readdata$BMI))
print(mean(readdata$BMI))
print(median(readdata$BMI))



print(min(readdata$DiabetesPedigreeFunction))
print(max(readdata$DiabetesPedigreeFunction))
print(mean(readdata$DiabetesPedigreeFunction))
print(median(readdata$DiabetesPedigreeFunction))

print(min(readdata$Age))
print(max(readdata$Age))
print(mean(readdata$Age))
print(median(readdata$Age))

print(min(readdata$Outcome))
print(max(readdata$Outcome))
print(mean(readdata$Outcome))
print(median(readdata$Outcome))




