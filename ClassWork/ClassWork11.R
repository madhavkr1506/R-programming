name<-"Madhav"
surname<-"kumar"
print(name,surname)  # it will produce an error : NAs introduced by coercion

print(cat(name,surname))
print(paste(name,surname))
print(paste0(name,surname))

# R numbers : 1. integer 2. numeric 3. complex
as.integer(1)
as.numeric(1)
as.complex(1)


# R if else : 
number<-as.integer(1)
if(number > 0){
  print("it is a positive number")
}else{
  print("it is a negative number")
}

if(as.integer(number)){
  print("it is a integer number")
}else{
  print("it is a numeric number")
}


# R nested if else
if(as.integer(number)){
  if(number > 0){
    print("it is a positive number")
  }
}else{
  print("it is a negative number")
}

# R if else-if else
vector1<-1:5
if(2 %in% vector1){
  print("yes it is there")
}else if(2 > 0){
  print("Yes 2 is greater than zero")
}else{
  print("Harry potter")
}


# find largest of three number
num1<-2
num2<-4
num3<-3

if(num1>num2 & num1>num3){
  print(num1)
}else if(num2 > num3){
  print(num2)
}else{
  print(num3)
}

.Machine$integer.max # Maximum integer value

.Machine$double.max
?as.double


# factor in R language

factor1<-c(1,2,3,4,5,5,4)
print(factor1)
print(factor(factor1))


print(factor(c("Madhav","Krishna","Ram","Rahul","Rohan","Madhav")))

?as.factor

is.ordered(factor1)  
is.factor(factor1)

# data frame in R language

dataFrame1<-data.frame(name = c("Madhav","Krishna","Rahul","Rohan",""),age = c(20,21,22,23,24),grade = c("A","B","C","D","E"),fix.empty.names = TRUE)
print(dataFrame1)
View(dataFrame1)

?as.data.frame


# conversion in R

numeric<-10
print(as.integer(numeric))
print(class(as.integer(numeric)))

character<-"10"
print(as.integer(character))
print(is.integer(character))  # it will give Boolean value

# working with vector

X<-c(a=1,b=2)
print(X)


df=data.frame(x=1:3,y=5:7)
print(df)

# access the columns of data frame
df[1]
df[[1]]
df$x

# add row
df<-rbind(df,c(11,12))

# add column
df<-cbind(df,z<-13:16)
View(df)



