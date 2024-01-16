# create  a string object :

myString<<-"Madhav"
print(myString)
myString

# create an array with : operator

array1<-1:12
class(array1)  # it will print class of array1

# using array() function create an array
array2<-array(array1,dim=c(2,2,3))
print(array2)

class(array2)

# way to access the element of array2

# 1 : array_name[row number,column number,matrix level]
array2[2,2,2]

# 2 : when we have to print entire row
array2[c(2),,1]

# 3 : when we have to print entire column
array2[,c(2),1]


# If else condition
a<-1
if(a != 1){
  print("T")
}else{
  print("F")
}

# while loop
i=1
while(i<5){
  print("madhav")
  i<-i+1
}


# if ,else if, else condition
num<-77
if(num > 90){
  print("A")
}else if(num > 80){
  print("B")
}else{
  print("Study hard")
}

# nested if 

name<-"madhav"
marks<-66L

if(name == "madhav"){
  if(marks >60){
    paste0("my name is madhav.","my marks is ",marks,"\n")
  }
}

# taking input from user

name1<-as.character(readline(prompt = "enter your name = "))
surname1<-as.character(readline(prompt = "enter your surname = "))
print(paste(name1," ",surname1))
