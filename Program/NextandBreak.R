# next and break in R programming


# next for skip
# break for exit from loop

num1<-1:10
for(val in num1){
  if(val == 5){
    next
  }
  print(val)
}

num1<-1:10
for(val in num1){
  if(val == 5){
    break
  }
  print(val)
}

var1<-1
repeat{
  print("Hello world")
  if(var1>=5){
    break
  }
  var1<-var1+1
}

# for loop in R programming : 

for(var2 in 1:10){
  print(5 * var2)
}

for(var3 in 1:10){
  print(paste("5 X",var3,"=",5*var3))
}


vector1<-c("Madhav","is","a","good","boy")
for(string in vector1){
  print(string)
}

# repeat loop in R programming 


# to exit from loop we use break
vector2<-c("Madhav","is","a","good","boy")
index<-1
repeat{
  if(index > length(vector2)){
    break
  }
  print(vector2[index])
  index<-index+1
}


# while loop in R programming

vector3<-c("Madhav","is","a","good","boy")
index<-1
while(index<=5){
  print(vector3[index])
  index<-index+1
}

