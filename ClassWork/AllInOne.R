# vector

name<-c("Madhav","Kishan","Rahul","Mohit","Rohan")
name

number<-seq(from = 1, to = 10, by = 1)
number

boolean<-c(T,F,T,F,F)
boolean

length(name)

sort(name)
name

name[1]

name[c(1:3)]
name[-1]

name[1]<-"Keshav"
name

repeat_vector<-rep(c(1:10), each = 3)
repeat_vector


repeat_vector<-rep(c(1:10), times = 3)
repeat_vector


# lists

fruits<-list("Mango","papaya","Guava")
fruits

fruits[1]

fruits[1]<-"Grapes"
fruits

length(fruits)

"Grapes" %in% fruits

append(fruits,"Orange")

append(fruits,"banana",after = 2)

newList<-fruits[-1]
newList

for(x in fruits){
  print(x)
}

fruits[1:3]

list1<-list("Hello","World")
list2<-list(1,2);
Join_list<-list(list1,list2)
Join_list


# Matrices

matrix1<-matrix(c(1:9),nrow = 3,ncol = 3)
matrix1

matrix1[1,3]


matrix1[1,]

matrix1[,1]

matrix1[c(1,2),]

matrix1[,c(1,2)]

matrix1<-cbind(matrix1,c(10:12))
matrix1

matrix1<-rbind(matrix1,c(13:16))
matrix1

matrix1[-1,-1]

1 %in% matrix1

dim(matrix1)

length(matrix1)

for(x in 1:nrow(matrix1)){
  for(y in 1:ncol(matrix1)){
    print(matrix1[x,y])
  }
}


# Arrays

array1<-array(c(1:8),dim = c(2,2,2))
array1

array1[1,1,1]

array1[c(1),,1]

array1[,c(1),1]

1 %in% array1

length(array1)

dim(array1)

for(x in array1){
  print(x)
}

# data frame


Data_frame<-data.frame(Name = c("Madhav","Kishan","Rahul","Rohit","Govind"),Section = rep(c("K22GM"),times = 5),Roll_No = c(1:5))
Data_frame

summary(Data_frame)
Data_frame$Name


dim(Data_frame)

length(Data_frame)

rowbind<-rbind(Data_frame,c("Krishna","K22GM",6))
rowbind

colbind<-cbind(Data_frame,Percentage = c(97,98,99,100,99))
colbind


# factor

name<-c("Madhav","Kumar","Rahul","Madhav","Rohan")
levels(factor(name))

length(factor(name))

factor(name)[1]



# write a program to print Armstrong number : 

inputRange1<-as.integer(readline("Enter Number = "))

inputRange2<-as.integer(readline("Enter Number = "))

function1<-function(num){
  count<-0;
  while(num!=0){
    num<-floor(num/10);
    count<-count+1
  }
  return(count)
}

function2<-function(num1,num2){
  for(num in num1:num2){
    temp<-num
    sum<-0
    count<-function1(num)
    while (num != 0) {
      rem<-num %% 10
      sum<-sum+(rem^count)
      num<-floor(num/10)
    }
    
    if(sum == temp){
      print(temp)
    }
  }
}

function2(inputRange1,inputRange2)



# working on csv file : 

readcsv<-read.csv(file.choose())
View(readcsv)

head(readcsv)
tail(readcsv)

mean(readcsv$Pregnancies)
median(readcsv$Glucose)
max(readcsv$Age)
min(readcsv$Outcome)

names(readcsv)

nrow(readcsv)
ncol(readcsv)

Number<-1:768
readcsv$Number<-Number
names(readcsv)
View(readcsv)

readcsv$Number <- NULL
View(readcsv)

names(readcsv)

subset(readcsv,BloodPressure > mean(readcsv$BloodPressure))
subset(readcsv,readcsv$Glucose == 100 & readcsv$BloodPressure >= 100)


# excel file : 

library(readxl)

data()

readexcel<-read_excel(file.choose())

View(readexcel)

nrow(readexcel)
subset(readexcel,readexcel$age == 50)


names(readexcel)

mean(readexcel$age)

median(readexcel$bmi)
subset(readexcel,readexcel$sex == "male" & readexcel$region == "southeast")

# sql file : 

library(sqldf)

sqldf("select * from readcsv")

sqldf("select * from readcsv limit 5")

sqldf("select Age from readcsv limit 4")

sqldf("select region,max(BMI) from readexcel group by region")

sqldf("select BMI, region from readexcel where age > 50 and age < 60")



