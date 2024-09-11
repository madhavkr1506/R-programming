data("Sonar")
data<-as.data.frame(Sonar)
typeof(Sonar)
ncol(data)

sample<-sample(1:nrow(data),0.93*nrow(data))
sample
traindata<-data[sample,-ncol(data)]
traindata
testdata<-data[-sample,-ncol(data)]
testdata

trainlabel<-data[sample,ncol(data)]
testlabel<-data[-sample,ncol(data)]

library(class)
library(caret)
library(gmodels)

prep_model<-knn(train = traindata,test = testdata, cl = trainlabel, k = 3)
prep_model

confusiontable = table(prep_model,testlabel)
confusiontable
confusionMatrix(confusiontable)

CrossTable(x = testlabel, y = prep_model, prop.chisq = FALSE)

data()
data<-as.data.frame(diamonds)
data
View(data)

label<-data$cut
label

data<-data[c(-1,-2,-3,-4)]

sample<-sample(1:nrow(data), 0.9 * nrow(data))
sample


traindata<-data[sample,]
traindata
testdata<-data[-sample,]
testdata

trainlabel<-label[sample]
trainlabel
testlabel<-label[-sample]
testlabel


library(class)
library(caret)
library(gmodels)

prep_model<-knn(train = traindata, test = testdata, cl = trainlabel, k = 105)

confusionMatrix(prep_model,testlabel)








