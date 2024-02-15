# write a program to check whether a number is prime number or not

# num<-as.integer(readline(prompt = "Enter number = "))
# if(num<=1){
#   print("It is not a prime number. smallest prime number is two");
# }
# found<-TRUE
# if(num == 2){
#   print("It is a prime number")
#   found<-TRUE
# }else{
#   
#   for(x in 2:sqrt(num)){
#     
#     if(num %% x == 0){
#       found<-FALSE
#       break
#     }
#   }
# }
# if(found){
#   print("It is a prime number")
# }else{
#   print("It is not a prime number")
# }


# write a program to check whether a number is strong number or not

# num<-as.integer(readline(prompt = "Enter number = "))
# sum = 0
# for(x in 1:num){
#   if(num %% x == 0 && num != x){
#     sum = sum + x
#   }
# }
# print(sum)
# if(sum == num){
#   print("It is a strong number")
# }else{
#   print("It is not a strong number")
# }


num<-as.integer(readline(prompt = "Enter number = "))
sum = 0
temp<-num
power<-function1(num)

function1<-function(num){
  total<-0
  while(num != 0){
    num = num %/% 10
    total<-total + 1
    
  }
  return(total)
  
}

while(num != 0){
  res <- num % 10
  
}



