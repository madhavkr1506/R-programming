# Write a program to check whether a number is prime or not

# 2 is special case : 2 is only even prime number

num<-as.integer(readline(prompt = "Enter number = "))
if(num <= 1){
  print(paste(num," is not a prime number"))
}
if(num == 2){
  print(paste(num," is a prime number"))
}else{
  for(i in seq(2,sqrt(num))){
    found<-TRUE
    if(num %% i == 0){
      found<-FALSE
      break
    }
  }
  if(found){
    print(paste(num," is a prime number"))
  }else{
    print(paste(num," is not a prime number"))
  }
}


# Write a program to print all prime number in the specific range

num1<-as.integer(readline(prompt = "Enter number = "))
num2<-as.integer(readline(prompt = "Enter number = "))

for(x in num1:num2){
  if(function1(x)){
    print(x)
  }
}
function1<-function(num){
  if(num <= 1){
    return(FALSE)
  }
  if(num == 2){
    return(TRUE)
  }else{
    for(i in 2:sqrt(num)){
      if(num %% i == 0){
        return(FALSE)
      }
    }
  }
  return(TRUE)
}

