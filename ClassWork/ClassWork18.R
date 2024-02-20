# R for loop : 

# remove the duplicate element from sorted array :

vector1<-c(1,1,1,2,2,3)
index<-3
for(x in seq(from = 3, to = length(vector1), by = 1)){
  if(vector1[x] != vector1[x - 2]){
    vector1[index]<-vector1[x]
    index<-index + 1
  }
}


for(x in seq(from = 1, to = index - 1, by = 1)){
  print(vector1[x])
}

vectro2<-c(1,2,3,4,5,6,7,8,9)
for(i in  seq(from = 1, to = length(vectro2), by = 1)){
  print(paste(as.character(i)))
}













