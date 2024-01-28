array1<-array(c(1:4),dim = c(1,2,2))
print(array1)

array2<-array(c(1:6),dim = 6,dimnames = list(c("First","Second","Third","Fourth","Fifth","Sixth")))
print(array2)

# Write a program to print reverse of any number

number<-readline(prompt = "Enter number = ")
input<-as.integer(number)

temp<-input
rem<-0
while(input != 0){
  digit<-input %% 10
  rem<-rem * 10 + digit
  input<-input %/%10
}

print(rem)


# write a program to print sum of all the number lies inside the vector until encounter first negative number

vector1<-c(1,2,3,4,5,-1,-3,4,5,-2)
print(vector1)

sum<-0
for(x in vector1){
  if(x<0){
    break
  }
  sum<-sum+x
}
print(sum)


# Write a program to print Fibonacci series up-to given number

input<-as.integer(readline(prompt = "Enter number = "))
if(input == 0){
  print(0)
}
if(input == 1){
  print(0)
  print(1)
}else{
  a<-0
  print(a)
  b<-1
  print(b)
  i<-0
  while(i<input){
    c<-a + b
    print(c)
    a<-b
    b<-c
    i<-i+1
  }
}

