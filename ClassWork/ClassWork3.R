# program to check whether number is an Armstrong number or not : 

num<-as.integer(readline("Enter your number = "))
temp<-num
res<-0
power<-function1(num)
while(num != 0){
  rem<-num%%10
  res = res + (rem ** power)
  num = floor(num/10)
}
if(temp == res){
  print("yes")
}else{
  print("no")
}

function1<-function(num){
  count<-0
  while(num!=0){
    num = floor(num / 10)
    count<-count+1
  }
  return(count)
}
