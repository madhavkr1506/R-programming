# vector

name<-c("Madhav","Kishan","Rahul","Mohit","Rohan")
name

number<-seq(from = 1, to = 10, by = 1)
number

boolean<-c(T,F,T,F,F)
boolean

length(name)

sort(name)
name

name[1]

name[c(1:3)]
name[-1]

name[1]<-"Keshav"
name

repeat_vector<-rep(c(1:10), each = 3)
repeat_vector


repeat_vector<-rep(c(1:10), times = 3)
repeat_vector


# lists

fruits<-list("Mango","papaya","Guava")
fruits

fruits[1]

fruits[1]<-"Grapes"
fruits

length(fruits)

"Grapes" %in% fruits

append(fruits,"Orange")

append(fruits,"banana",after = 2)

newList<-fruits[-1]
newList

for(x in fruits){
  print(x)
}

fruits[1:3]

list1<-list("Hello","World")
list2<-list(1,2);
Join_list<-list(list1,list2)
Join_list


# Matrices

matrix1<-matrix(c(1:9),nrow = 3,ncol = 3)
matrix1

matrix1[1,3]


matrix1[1,]

matrix1[,1]

matrix1[c(1,2),]

matrix1[,c(1,2)]

matrix1<-cbind(matrix1,c(10:12))
matrix1

matrix1<-rbind(matrix1,c(13:16))
matrix1

matrix1[-1,-1]

1 %in% matrix1

dim(matrix1)

length(matrix1)

for(x in 1:nrow(matrix1)){
  for(y in 1:ncol(matrix1)){
    print(matrix1[x,y])
  }
}


# Arrays

array1<-array(c(1:8),dim = c(2,2,2))
array1

array1[1,1,1]

array1[c(1),,1]

array1[,c(1),1]

1 %in% array1

length(array1)

dim(array1)

for(x in array1){
  print(x)
}

# data frame


