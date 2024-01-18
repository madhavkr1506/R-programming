# this is got Armstrong number

# num1<-as.integer(readline("Enter number = "))
# temp<-num1
# digit<-function2(num1)
# res<-0
# while(num1 != 0){
#   rem <- num1%%10
#   res = res + (rem ** digit)
#   num1 = floor(num1/10)
# }
# if(temp == res){
#   print("yes")
# }else{
#   print("no")
# }
# function2<-function(num){
#   count = 0
#   while(num != 0){
#     num = floor(num / 10)
#     count = count + 1
#   }
#   return(count)
# }
# 
# 


# this is for palindrome number

num2<-as.integer(readline("enter your number = "))
temp<-num2
rev<-0
while(num2 != 0){
  rem<-num2%%10
  rev = (rev * 10) + rem
  num2 = floor(num2 / 10)
}
if(temp == rev){
  print("yes")
}else{
  print("no")
}


# take two vectors named vector1 and vector2

vector1<-c(1,2,3,4,5)
vector2<-c(2,3,1,4,5)

# perform relational operator
print(vector1<vector2)
print(!(vector1 == vector2))



# this is for strong number 

num3<-as.integer(readline("enter the number = "))
sum<-0
for(i in 1:num3){
  if(num3%%i == 0 && num3 != i){
    sum = sum + i
    # print(i)
  }
}
print(sum)
if(sum == num3){
  print("yes")
}else{
  print("no")
}

# assignment operator

a<-10
a<<-10











