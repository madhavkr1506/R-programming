# List in R programming : 


# A list in r is a generic object consisting of an ordered collection of objects. lists are one dimensional, heterogeneous data structures.
# list can be a list of vectors, a list of matrices, a list of characters, a list of function and so on.

# a list is a vector but with heterogeneous data elements. a list in r is created with the use of list() function.
# we can access elements of a list using index.

# we can change value in the list : 
# listName[index]<-"new value"

# to find how many items a list has, we use the length() function.

# to find out some specific item present in a list, use the %in% operator.

# to append an item to the end of the list, we use append() function.

# to add item to the right of the specified index, add "after = index number" in the append() function.
# append(list_name,"item",after = index_number)

# we can remove list items
# listname[-index_number]

# ranges of indexes in list : 
# (list name)[index_number1:index_number2]

# join two list : 
# the most common way to join two or more list using c() function.


vector1<-c("a","b","c","d","e")
vector2<-seq(from=1,to=5,by=1)

list1<-c(vector1,vector2)
list2<-list(vector1,vector2)

print(list1)
print(list2)

(list2)[1:5]


myList<-list("Madhav","is","a","good","boy")
print(myList)

(myList)[1:5]

myList[1]

myList[1]<-"Krishna"

myList

"Madhav" %in% myList

names(myList)<-c("Name","Auxiliary Verb","Article","Adjective","Gender")
print(myList)


print(myList["Name"])
print(myList["Krishna"])  # it will print NULL value.

print(myList$Article)







