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
  return ((x - min(x)) / (max(x) - min(x)))
}


table(readdata$Species)


readdata$Sepal.Length<-normalize(readdata$Sepal.Length)
readdata$Sepal.Width<-normalize(readdata$Sepal.Width)
readdata$Petal.Length<-normalize(readdata$Petal.Length)
readdata$Petal.Width<-normalize(readdata$Petal.Width)
summary(readdata$Sepal.Length)
summary(readdata$Sepal.Width)
summary(readdata$Petal.Length)
summary(readdata$Petal.Width)


library(class)
library(caret)


traindata<-readdata[1:90,]
testdata<-readdata[91:150,]
prep_model<-knn(traindata[,-5],testdata[,-5],cl = readdata$Species[1:90],k = 21)
prep_model

confusiontable = table(prep_model,readdata$Species[91:150])
confusiontable


confusionMatrix(prep_model,readdata$Species[91:150])















readdata<-read.csv("wisc_bc_data.csv")
View(readdata)
readdata<-readdata[-1]
View(readdata)

table(readdata$diagnosis)

summary(readdata$area_mean)
summary(readdata$smoothness_mean)
summary(readdata$radius_mean)

normalize<-function(x){
  return ((x - min(x)) / (max(x) - min(x)))
}



# knn algorithm

readdata$radius_mean<-normalize(readdata$radius_mean)
readdata$area_mean<-normalize(readdata$area_mean)
readdata$smoothness_mean<-normalize(readdata$smoothness_mean)

summary(readdata$radius_mean)
summary(readdata$area_mean)
summary(readdata$smoothness_mean)

nrow(readdata)

traindata<-readdata[1:469,-1]
traindata
testdata<-readdata[470:569,-1]
testdata

trainlabel<-readdata[1:469,1]
trainlabel

testlabel<-readdata[470:569,1]
testlabel

library(class)

library(caret)
prep_model<-knn(train = traindata,test = testdata,cl = trainlabel,k = 18)
prep_model

confusiontable = table(prep_model,testlabel)
confusiontable


confusionMatrix(confusiontable)

library(gmodels)
CrossTable(x = testlabel,y = prep_model,prop.chisq = FALSE)


























# knn on iris dataset
dataset<-as.data.frame(iris)
View(dataset)

table(dataset$Species)
summary((dataset$Sepal.Length))
summary((dataset$Sepal.Width))
summary((dataset$Petal.Length))
summary((dataset$Petal.Width))


normalize<-function(x){
  return ((x - min(x)) / max(x) - min(x))
}


dataset$Sepal.Length<-normalize(dataset$Sepal.Length)
dataset$Sepal.Width<-normalize(dataset$Sepal.Width)
dataset$Petal.Length<-normalize(dataset$Petal.Length)
dataset$Petal.Width<-normalize(dataset$Petal.Width)

summary((dataset$Sepal.Length))
summary((dataset$Sepal.Width))
summary((dataset$Petal.Length))
summary((dataset$Petal.Width))


library(class)
library(caret)
library(gmodels)


traindatasample<-sample(1:nrow(dataset),0.8*nrow(dataset))
traindatasample
traindata<-dataset[traindatasample,-5]
traindata
testdata<-dataset[-traindatasample,-5]

trainlabel<-dataset[traindatasample,5]
testlabel<-dataset[-traindatasample,5]


prep_model = knn(train = traindata,test = testdata,cl = trainlabel, k = 9)
prep_model

confusiontable = table(prep_model,testlabel)
confusiontable
confusionMatrix(confusiontable)

CrossTable(x = testlabel, y = prep_model,prop.chisq = FALSE)


