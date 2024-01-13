# take input from user : 

name<-readline(prompt = "Enter your name ")
age<-readline(prompt = "Enter your age ")
print(name)
print(age)
print(paste("My name is ",name," and i am ",age," years old."))

paste("Madhav","is","a","good","boy",sep="-")

paste0("Madhav","is","a","good","boy")

# note : paste : it will concatenates strings using a space as default separator.
# paste0 : it will concatenates strings using no space as default separators, and convert it into single string.


# function in R programming language :
# syntax : 
# function_name<-function(argu1,argu,...){}

function1<-function(){
  for(i in 1:10){
    print(paste(i," ",i^2))
  }
}
function1()

addTwoNumber<-function(num1,num2){
  print(paste("The sum is ",num1+num2))
}

addTwoNumber(5,6)
addTwoNumber(num1=4,num2=9)

multiplyTwoNumber<-function(num1=29,num2=45){
  print(paste("multiplication of two number is ",num1*num2))
}
multiplyTwoNumber()
multiplyTwoNumber(7,8) # it will overwrite the default value


# built in function in the R language : 

num1<- -36
print(abs(num1))
print(sqrt(-(num1)))

num2<-36.9
print(ceiling(num2))
print(floor(num2))

vector1<-c(1.5,5.6,8.6)
print(trunc(vector1))


num3<-45
print(sin(num3))
print(log(num3))
print(exp(num3))


string1="MadhavHello"
substr(string1,2,6)
print(substr(string1,2,6))

print(tolower(string1))
print(toupper(string1))

vector2<-c("krishna","Keshav","Kripal","Kira","kritan","krimu")
search="^kri"
print(grep(search,vector2))

vector3<-c(1:5,6)
print(sum(vector3))
print(vector3)

print(min(vector3))
print(max(vector3))


help.search("split")


