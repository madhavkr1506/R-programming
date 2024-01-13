# If Else in R programming
a<-23
if(is.integer(a)){
  print("a is an integer number")
}else{
  print("a is not an integer number")
}

b<-c("Madhav","is","a","good","boy")
if("Madhav"%in% b){
  print("key is found in the vector")
  print(b)
}else{
  print("It is not present in the vector")
}

marks<-61
if(marks>90){
  print("first class")
}else if(marks > 80){
  print("second class")
}else if(marks > 70){
  print("third class")
}else{
  print("fourth class")
}