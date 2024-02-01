# write r program to check whether a number is prime or not

number<-as.integer(readline(prompt = "Enter number = "))
if(number<2){
  print("two is the smallest prime number")
}
found<-TRUE
if(number==2){
  print(paste(number,"is a prime number"))
}else{
  for(x in 2:sqrt(number)){
    if(number %% x == 0){
      found<-FALSE
      break
    }
  }
}
if(found){
  print(paste(number,"is a prime number"))
}else{
  print(paste(number,"is not a prime number"))
}

# write r program to print prime number in a given range

start<-as.integer(readline(prompt = "Enter number = "))
end<-as.integer(readline(prompt = "Enter number = "))

function1<-function(num){
  if(num < 2){
    return(FALSE)
  }
  if(num==2){
    return(TRUE)
  }else{
    for(x in 2:sqrt(num)){
      if(num %% x == 0){
        return(FALSE)
      }
    }
  }
  return(TRUE)
}

for(x in start:end){
  if(function1(x)){
    print(x)
  }
}


# write a r program to check whether a number is Armstrong or not 

ArmstrongNum<-as.integer(readline(prompt = "Enter number = "))
temp<-ArmstrongNum
sum<-0
power<-function1(ArmstrongNum)

while(ArmstrongNum != 0){
  rem<-ArmstrongNum %% 10
  sum<- sum + (rem ** power)
  ArmstrongNum = floor(ArmstrongNum / 10)
}
if(sum == temp){
  print(paste(temp,"is an armstrong number"))
}else{
  print(paste(temp,"is not an armstrong number"))
}
function1<-function(num){
  count<-0
  while (num != 0) {
    num = floor(num / 10)
    count<-count + 1
  }
  return(count)
}


