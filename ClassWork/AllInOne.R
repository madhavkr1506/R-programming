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


# substr

string1<-"abcdefghij"
substr(string1,1,5)

vector1<-c("madhav","kishan","ravi","rahul","rohan")
substr(vector1,1,3)
substr(vector1[1],1,3)


nchar(vector1)

nchar(string1)

grep("Madhav",vector1)

grep("Madhav",vector1,ignore.case = T)

print(grep("Madhav",vector1,ignore.case = T,value = T))

sub("madhav","Madhav",vector1)

for(name in vector1){
  name<-toupper(name)
  print(name)
}


# apply() function

matrix1<- matrix(c(1:9), nrow = 3, ncol = 3)
matrix1
apply(matrix1, 1, sum)
apply(matrix1, 2, mean)

# lapply() : 

list1<-list("Madhav","Rahul","Kishan","Amit")
lapply(list1, tolower)

unlist(lapply(list1,tolower))


# sapply() : 

x<-cars
x

sapply(x,max)

# tapply() : 

d<-iris
d

tapply(d$Sepal.Width,d$Species,median)


list1<-list("Madhav","Krishna")
list2<-list("kumar","Kumar")
mapply(paste,list1,list2)


# missing value : 

dataframe<-data.frame(Name = c("Madhav",NA,NA,NA), Reg_No = c(1:4))

dataframe

levels(dataframe)

is.na(dataframe)

dataframe[!is.na(dataframe)]

na.fail(dataframe)
na.omit(dataframe)
na.exclude(dataframe)
na.pass(dataframe)

library(visdat)
vis_miss(dataframe)


date()

Sys.Date()
Sys.time()
Sys.timezone()
date1<-as.POSIXlt("28-04-2024")
date1

date1<-as.POSIXlt("2024-04-28")
date1

weekdays(date1)
months(date1)

weekdays(date1,abbreviate = T)

LETTERS
letters
month.abb
month.name


data<-iris
View(data)

library(dplyr)

data %>% select(Sepal.Length)

data %>% filter(Sepal.Length > 6.0) %>% select(Sepal.Length,Sepal.Width)

library(tidyr)


df<-data.frame(Reg_No = c(101,102,103,104,105),Name = c("Madhav","Krishna","Rahul","Rohan","Satyam"),Surname = c("Kumar","Das","Gupta","Chandel","Singh"),Grade = c('A','B','C','D','E'))
df
LongD<-gather(df,key = "Key.1",value = "Value.1",Name,Surname)
LongD

spreadD<-spread(LongD,Key.1,Value.1)
spreadD

uniteD<-unite(spreadD,Name_SurName,Name,Surname,sep = " ")
uniteD

sepD<-separate(uniteD,Name_SurName,c("Name","Surname"),sep = " ")
sepD

df<-data.frame(S.No = c(1:5),Bool = c(T,rep(NA,3),F))
df

fill(df,Bool,.direction = "up")

drop_na(df,Bool)

replace_na(df,list(Bool = T))


# 04-05-2024



library(stringr)

str_c("Madhav"," ","Kumar")

str_sub("Madhav kumar",1,6)

str<-"Madhav is a good boy"
sub("good","bad",str)

str_replace(str,"good","bad")

str_detect(str,"Madhav",negate = T)

str_extract(str,"madhav")

str_split(str," ")

str_pad(str,width = 50,side = "right",pad = "0")

str_to_lower(str)
str_to_upper(str)

str_trim("   Hello World        ")


data()

df<-as.data.frame(Titanic)
View(df)
print(df)

library(dplyr)
UpdateDf <-as.data.frame(df)
UpdateDf <- UpdateDf %>% mutate(Family = paste(Class,Sex,Age,Survived,sep=" "))

UpdateDf

unique(head(UpdateDf,4))

freqdf<-df$Survived
freqdf

summary(freqdf)

summary(df$Age)

# mtcars

df<-as.data.frame(mtcars)
df

criteria1<-df %>% filter(gear > 3 & am == 0) %>% select(mpg)
criteria1


install.packages("sqldf")
library(sqldf)

sqldf("select mpg from df where gear>3 and am == 0")

subset(df,gear > 3 & am == 0)["mpg"]

for(i in 1 : nrow(df)){
  if(df$gear[i] > 3 & df$am[i] == 0){
    print(df$mpg[i]);
  }
}

vector1<-c("a","n","Hello",2,"c45",'100')
vector1
typeof(vector1)
class(vector1)

df<-data.frame(emp.id = c(1:5), Name = c("Madhav","Krishna","Rahul","Sandeep","Kishan"), Salaries = c(1234,2345,3456,4567,5678), Dept = c(rep("IT",4),"CSE"))
df
# salary3000 = df[df$Salaries > 2500,]
# salary3000

salary3000<-which(df$Salaries > 3000 & df$Dept == "IT")
df[salary3000,]



data()
View(fruit)
print(fruit)

titanicdf<-as.data.frame(Titanic)
titanicdf
totalPassangerClass<-tapply(titanicdf$Freq,titanicdf$Class,sum)
totalPassangerClass

totalPassangerClassDead = tapply(titanicdf$Freq[titanicdf$Survived == "No"],titanicdf$Class[titanicdf$Survived == "No"],sum)
totalPassangerClassDead


deadRatio = totalPassangerClassDead/totalPassangerClass
deadRatio


newData<-as.data.frame(HairEyeColor)
newData
View(newData)

totalNoOfPeople<-tapply(newData$Freq,newData$Sex,sum)
totalNoOfPeople

sum(subset(newData,newData$Eye=="Brown" & newData$Sex=="Male",select = "Freq"))

sum(subset(newData,newData$Eye=="Brown" & newData$Sex=="Female",select = "Freq"))

sum<-0
for(i in 1:nrow(newData)){
  if(newData$Sex[i] == "Male" & newData$Eye[i] == "Brown"){
    sum = sum+newData$Freq[i]
  }
}
print(sum)


BrownMenSum<-sum(sapply(newData$Freq[newData$Sex == "Male" & newData$Eye == "Brown"],sum))

TotalSum<-sum(sapply(newData$Freq,sum))

ratioForBrownMen<-BrownMenSum/TotalSum
ratioForBrownMen
round(ratioForBrownMen,2)

TotalPeople<-tapply(newData$Freq,newData$Eye,sum)
TotalPeople.men<-tapply(newData$Freq[newData$Sex == "Male"],newData$Eye[newData$Sex == "Male"],sum)
TotalPeople.men.ratio<-TotalPeople / TotalPeople.men
round(TotalPeople.men.ratio,2)


# data frame

df<-data.frame(Name = c("Madhav","Krishna","Ravi","Rahul","Rohan","Rohit","Mohit"), Surname = c("Kumar","Singh","Jayka","Sharma","Yadav","Jadhav","Agarwal"), Country.code = c(91,81,101,71,61,54,91), Mobile.no = c(123456789,147852963,321654987,159376248,852963741,258741369,456987123), Grade = c("A","B","C","D","E","F","G"))
df

library(tidyr)

longD<-gather(df,key = "key.1",value = "value.1",Name,Surname)
longD

sepD<-spread(longD,key.1,value.1)
sepD

uniteD<-unite(sepD,Contact.No,Country.code,Mobile.no,sep = "-")
uniteD

separateD<-separate(uniteD,Contact.No,c("Country.Code","Mobile.No"),sep = "-")
separateD

# Graph

data()
df<-as.data.frame(iris)

df

names(df)
nrow(df)

levelsSpecies<-levels(df$Species)
levelsSpecies
levelsSpecies.sum<-tapply(df$Sepal.Length,df$Species,sum)
levelsSpecies.sum
barplot(levelsSpecies.sum,main = "Bar plot representing sum of sepal.length of species",ylab = "sum of sepal.length",xlab = "species",col = "green", col.lab = "blue", col.main = "red", col.axis = "brown",width = c(2,2,2))

pie(levelsSpecies.sum,col = c("green","red","blue"),main = "Bar plot representing sum of sepal.length of species",ylab = "sum of sepal.length",xlab = "species", col.lab = "blue", col.main = "red", col.axis = "brown")

library(plotrix)
pie3D(levelsSpecies.sum,labels = levelsSpecies,explode = 0.3,main = "Pie3D representing sum of sepal.length of species",col.main = "brown")


boxplot(Sepal.Length ~ Sepal.Width,data = iris,main = "Box plot representing sum of sepal.length",col = "red")

?boxplot

hist(df$Sepal.Length,main = "Histogram representing frequency of sepal.length",col.main = "green", xlab = "sepal.length")


# ggplot

library(ggplot2)
library(dplyr)

mtcarsData<-as.data.frame(mtcars)
mtcarsData

p1<-mtcarsData %>% select(mpg,cyl) %>% filter(mpg > 20)
p1

# barplot

df<-as.data.frame(mtcars)

cyltable<-table(df$cyl)
cyltable

barplot(cyltable,main = "Cylinder table",col = rainbow(3))

barplot(prop.table(cyltable) * 100 ,col = rainbow(3))

plot(factor(df$cyl),col = rainbow(3))

am<-factor(df$am)

levels(am)<-c("Automatic","Manual")

grouptable<-table(df$cyl,df$am)
grouptable
barplot(grouptable,col = rainbow(3),main = "Bar plot",beside = T)


# display transmission type and number of cylinders based on mean horse Power.

summary<-round(tapply(df$hp,list(df$cyl,am),mean),2)
summary

plot1<-barplot(summary,col = rainbow(3),beside = T,main = "display transmission type and number of cylinders based on mean horse Power")

legend(x = "topright",y = "top",legend = levels(factor(df$cyl)),fill = rainbow(3),title = "Cylinder")
# box plot

boxplot(summary,col = rainbow(2),notch =  T)


# scatter plot

plot(df$mpg~df$hp)

# box plot

df<-as.data.frame(mtcars)
names(df)
?mtcars

df$efficiency<-df$hp / df$wt

boxplot(df$efficiency ~ df$am,main = "Engine efficiency as per car transmission" , xlab = "Transmission type", ylab = "Efficiency", col = rainbow(2), names = c("Automatic","Manual"))

scatter.plot<-plot(df$efficiency,df$am)

library(ggplot2)

ggplot(df,aes(x = mpg, y = drat)) + geom_point(aes(color = factor(gear))) + stat_smooth(method = "lm",color = "red",se = FALSE,size = 1)
