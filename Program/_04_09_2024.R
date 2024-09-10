# KNN Algorithm

readdata<-read.csv("wisc_bc_data.csv")
readdata<-readdata[,-1]
View(readdata)
table(readdata$diagnosis)

readdata$diagnosis[readdata$diagnosis == "B"] <- "Benign"
readdata$diagnosis[readdata$diagnosis == "M"] <- "Malignant"

summary(readdata$radius_mean,readdata$area_mean,readdata$smoothness_mean)
summary(readdata$radius_mean)
summary(readdata$area_mean)
summary(readdata$smoothness_mean)

normalize<-function(x){
  return ((x-min(x))/(max(x) - min(x)))
}


readdata$radius_mean<-normalize(readdata$radius_mean)
readdata$area_mean<-normalize(readdata$area_mean)
readdata$smoothness_mean<-normalize(readdata$smoothness_mean)
summary(readdata$radius_mean)
summary(readdata$area_mean)
summary(readdata$smoothness_mean)

library(class)

set.seed(1000)
trainIndex<-sample(1:nrow(readdata),0.8*nrow(readdata))
train<-readdata[trainIndex,]
test<-readdata[-trainIndex,]

knn_prep<-knn(train[,-1],test[,-1],train$diagnosis,k=21)
table(knn_prep,test$diagnosis,dnn = c("prediction","actual"))


accuracy<-sum(knn_prep == test$diagnosis) / nrow(test)
accuracy

readdata[trainIndex,]






















matrix<-matrix(c(1:9),nrow = 3,ncol = 3,byrow = TRUE, dimnames = list(c("A","B","C"),c("A","B","C")))
matrix


array<-array(1:18,dim = c(3,3,3), dimnames = list(c("A","B","C"),c("A","B","C")))
array


dataframe<-data.frame(A=c("a","b","c"),B=c("d","e","f"),C=c("g","h","i"))
dataframe
























data()
readdata<-as.data.frame(Titanic)
readdata
View(readdata)

readdata<-iris
View(readdata)

summary(readdata)
summary(readdata$Sepal.Length)
summary(readdata$Sepal.Width)
summary(readdata$Petal.Length)
summary(readdata$Petal.Width)

normalize<-function(x){
  return (x - min(x) / (max(x) - min(x)))
}

