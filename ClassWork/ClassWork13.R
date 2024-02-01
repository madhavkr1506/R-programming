# data frame

dataframe1<-data.frame(name=c("Madhav","Kaushal","Rahul","Rohan","Raj"),mobile=c(1234567890,1563524987,1485263987,8498481984,8948955486));
View(dataframe1)

writeData<-write.csv(dataframe1,"C:\\Users\\madha\\Documents\\R programming\\ClassWork\\dataframe1.csv")
readData<-read.csv(file = "C:\\Users\\madha\\Documents\\R programming\\ClassWork\\dataframe1.csv")
View(readData)


# vector
 # 1.integer

vector1<-as.integer(seq(from = 1,to = 5,by = 2))
print(vector1)
class(vector1)
typeof(vector1)

 # 2.character

vector2<-as.character(c("a","b","c","d","e"))
print(vector2)
class(vector2)
typeof(vector2)


 # 3.logical

vector3<-c(TRUE,FALSE,TRUE,FALSE)
print(vector3)
vector3[2]

 # 4.vector operation

vector4<-c(1,2,3,4)
vector5<-c(TRUE,FALSE,TRUE,FALSE)
print(vector4[vector5])

vector6<-c(1,2,3,4)
vector7<-c(1,2,3,4)
print(vector6+vector7)

print(vector6 == vector7)

vector8<-c("Madhav","Kumar")
names(vector8)<-c("Kishan","Rahul")
print(vector8)
print(vector8["Kishan"])

vector8[c("Rahul","Kishan")]
