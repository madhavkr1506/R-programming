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


# Practice : 

# 1.

for(i in 1:10){
  for(j in 1:10){
    cat(i*j," ")
  }
  cat("\n")
}

# 2.

n <- as.integer(readline(prompt = "Enter the number of rows for the pyramid: "))


for (i in 1:n) {
  for (j in 1:(n - i)) {
    cat(" ")
  }
  for (k in 1:(2 * i - 1)) {
    cat(" *")
  }
  cat("\n")
}

# 3.

library(stringr)

vector1<-c("a","ab","acb","accb","acccb","accccb")
vector1

p1<-str_subset(vector1,"^a(c{2})+b$")
p1

p2<-str_subset(vector1,"^a(c)+b$")
p2

p3<-str_subset(vector1,"^a(c{0,1})+b$")
p3

p4<-str_subset(vector1,"^a(c{2,4})+b$")
p4

str_to_upper(vector1)

str_to_lower(vector1)
str_detect(vector1,"^a(c)+b$")

str_match(vector1,"^a(c)+b$")

str_replace_all(vector1,"c","***")

# 4.

df<-as.data.frame(iris)
library(plotly)
plot1<-plot_ly(df,x = ~df$Sepal.Length,y = ~ df$Sepal.Width,type = "scatter", mode = "line")
plot1

plot2<-plot_ly(df,x = df$Sepal.Length,type = "scatter",mode = "line")
plot2

plot3<-plot_ly(df,x = df$Sepal.Length, type = "box")
plot3

plot4<-plot_ly(df,x = df$Sepal.Length,type = "histogram")
plot4


plot(df$Sepal.Length,type = "l")

library(ggplot2)
ggplot(df,aes(x = Sepal.Length, y = Sepal.Width)) + geom_point() + geom_smooth(method = "lm",se = 0)


# 5;

data()

df<-.asdata.frame(faithful)
df
unique(df$eruptions)

avgwaitingTime<-mean(diff(df$eruptions))
avgwaitingTime

names(df)
?faithful

morethan3mins<-sum(df$eruptions > 3)
morethan3mins

morethan2andlessthan4<-sum(df$eruptions >= 2 & df$eruptions <= 4)
morethan2andlessthan4

library(dplyr)

plot_ly(df,x = df$eruptions, type = "box") %>% layout(title = "box plot",xaxis = list(title = "eruptions"))

plot_ly(df,x = df$eruptions,type = "histogram") %>% layout(title = "histogram")

plot_ly(df,x = df$eruptions,type = "scatter",mode = "marker")

dflabel<-c("Madhav","Rahul","Kumar","Krishna","Ravi")
dfvalue<-c(99,78,56,45,67)
markerdf<-c(rainbow(5))
df<-data.frame(data1=dflabel,data2=dfvalue,data3=markerdf)
df
plot_ly(df,labels = dflabel, values = dfvalue, marker = list(colors = markerdf)) %>% add_pie(hole = 0)


# pattern

n<-5L
for(i in 0:(n-1)){
  for(j in 0:(n-i-1)){
    cat(" ")
  }
  for(k in 0:i){
    cat(k+1)
  }
  for(l in 0:i){
    if(l == 0){
      next;
    }
    else{
      cat(l)
    }
  }
  cat("\n")
}


irisdf<-as.data.frame(iris)
?iris

library(plotly)

plot_ly(irisdf,x = irisdf$Sepal.Length,type = "histogram") %>% layout(title = "Histogram plot",
                                                               xaxis = list(title = "Sepal.Length"),
                                                               yaxis = list(title = "Frequency"))


plot_ly(irisdf,x = irisdf$Sepal.Length, y = irisdf$Petal.Length , type = "box") %>% layout(title = "Box plot",
                                                                                    xaxis = list(title = "Sepal.Length"),
                                                                                    yaxis = list(title = "Sepal.Width"))



plot_ly(irisdf, x = irisdf$Sepal.Width, type = "scatter", mode = "line") %>% layout(title = "Line plot",
                                                                                    xaxis = list(title = "Sepal.Width"))

mtcarsdf<-as.data.frame(mtcars)

cyltable<-table(mtcarsdf$cyl)
cyltable
barplot(cyltable)

plot_ly(mtcarsdf, x = cyltable, y = levels(factor(mtcarsdf$cyl)), type = "bar") %>% layout(title = "Bar plot",
                                                                                           xaxis = list(title = "No of cars"),
                                                                                           yaxis = list(title = "No of cylinder"))

plot_ly(mtcarsdf,labels = levels(factor(mtcarsdf$cyl)), values = cyltable, marker = list(colors = rainbow(3))) %>% add_pie(hole = 0)


data()
airdf<-as.data.frame(airquality)
?airquality
View(airdf)

# colSums(is.na(airdf))

# data(package = .packages(all.available = TRUE))


# nrow(airdf)
# airdf[order(airdf[,1]),]

# View(airdf)
# airdf$Solar.R<-NULL
# View(airdf)


selectcol<-airdf[,c("Ozone","Solar.R","Wind","Temp")]
selectcol

library(tidyr)
fill(airdf,Ozone,.direction = "down")
fill(airdf,Solar.R,.direction = "down")

selectcol.mean<-sapply(airdf, mean)
selectcol.mean

# 

library(tidyr)

df<-data.frame(c.feedback = c("good","bad","average","below average","awesome"),c.id = c(1,2,3,4,5),q.id = c(101,102,103,104,105),e.scores = c(100,78,56,48,100))
df

long<-gather(df,key = "key.1",value = "value.1",c.id,q.id)
long

spread<-spread(long,key.1,value.1)
spread

unite<-unite(spread,c.id_q.id,c.id,q.id)
unite

separate<-separate(unite,c.id_q.id,c("c.id","q.id"))
separate

# diamond shape

# n<-5L
# for(i in 0:(n-1)){
#   for(j in 0:(n-i-1)){
#     cat(" ")
#   }
#   for(k in 0:(i)){
#     cat(k+1)
#   }
#   for(l in i:0){
#     if(l == 0){
#       next
#     }
#     else{
#       cat(l)
#     }
#   }
#   cat("\n")
#   
# }


n<-as.integer(readline("Input value : "))

function1<-function(n){
  for(i in 1:n){
    for(j in 1:(n-i)){
      cat(" ")
    }
    for(k in 1:(i*2-1)){
      cat("*")
    }
    cat("\n")
  }
  for(i in (n-1):1){
    for(j in 1:(n-i)){
      cat(" ")
    }
    for(k in 1:(2*i-1)){
      cat("*")
    }
    cat("\n")
  }
}


function1(n)


function2<-function(n){
  for(i in 1:n){
    for(j in 1:i){
      cat("*")
    }
    cat("\n")
  }
}

function2(n)

# reverse right angled triangle
function3<-function(n){
  for(i in 1:n){
    for(j in 1:i){
      cat("*")
    }
    for(k in (n-i):1){
      if(k == 0){
        break
      }
      cat("#")
    }
    cat("\n")
  }
}

function3(n)


function4<-function(n){
  for(i in 1:n){
    for(j in 1:i){
      if(j == 1){
        next
      }
      cat(" ")
    }
    for(k in i:(n)){
      cat(k)
    }
    cat("\n")
  }
}

function4(n)
# 

data()

?Niles
?LakeHuron

df<-as.data.frame(iris)
View(df)

unique(df$Species)

mean.sepal.length<-tapply(df$Sepal.Length,df$Species,mean)

barplot(mean.sepal.length, main = "Bar plot", xlab = "Species", ylab = "Value", col = rainbow(3), col.main = "pink", col.lab = "red", col.axis = "brown")


library(ggplot2)
library(dplyr)
ggplot(df,aes(x = df$Sepal.Length))+geom_histogram(binwidth = 3,fill = "black")+labs(title = "sepal.length")


heatmap(as.matrix(mtcars))
library(plotly)


plot_ly(data = as.data.frame(mtcars), x = ~mpg, y = ~hp, z = ~mpg, type = "heatmap")


# subject marks

subject<-as.integer(readline("Input number of subjects : "))
list1<-list()

for(i in 1:subject){
  marks<-as.integer(readline(paste("Input marks ",i,": ")))
  
  # list1[[i]]<-marks
  list1<-append(list1,marks)
}

list1<-NULL

sum<-0
for(i in list1){
  sum<-sum+i
}

average<-sum / subject

if(average >= 90){
  print("A")
}else if(average>=80){
  print("B")
}else if(average>=70){
  print("C")
}else if(average>=60){
  print("D")
}else{
  print("E")
}


df<-data.frame(ht=c(111,112,113),wt=c(56,78,98),gen=c("M","T","F"))
df
levelofgen<-levels(factor(df$gen))
levelofgen
levelofgenOrder<-factor(c("M","F","F"),levels = c("M","T","F"))
levelofgenOrder

list1 = list("A","B","C")
typeof(list1)
vector1<-unlist(as.vector(list1))
typeof(vector1)


