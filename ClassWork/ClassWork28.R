getwd()
setwd("C:/Users/madha/OneDrive/Documents/R programming/ClassWork")
getwd()


readData<-read.csv("b_depressed.csv")


names(readData)

print(is.na(readData))

levels(readData$Age)   

na.fail(readData)   

na.exclude(readData)   

na.omit(readData)   

print(na.omit(readData))

colSums(is.na(readData))

rowSums(is.na(readData))

sum(is.na(readData))

data<-na.omit(readData)
print(data)


library(visdat)



vis_miss(readData)



