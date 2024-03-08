getwd()
setwd("C:/Users/madha/OneDrive/Documents/R programming/ClassWork")

getwd()

readdata<-read.csv("Prostate_cancer.csv")
View(readdata)

print(nrow(readdata))
print(ncol(readdata))
print(head(readdata))
print(tail(readdata))

print(min(readdata$id))
print(max(readdata$id))
print(mean(readdata$id))
print(median(readdata$id))

print(min(readdata$diagnosis_result))
print(max(readdata$diagnosis_result))

print(min(readdata$radius))
print(max(readdata$radius))
print(mean(readdata$radius))
print(median(readdata$radius))


print(min(readdata$texture))
print(max(readdata$texture))
print(mean(readdata$texture))
print(median(readdata$texture))

print(min(readdata$perimeter))
print(max(readdata$perimeter))
print(mean(readdata$perimeter))
print(median(readdata$perimeter))

print(min(readdata$area))
print(max(readdata$area))
print(mean(readdata$area))
print(median(readdata$area))


print(min(readdata$smoothness))
print(max(readdata$smoothness))
print(mean(readdata$smoothness))
print(median(readdata$smoothness))



print(min(readdata$compactness))
print(max(readdata$compactness))
print(mean(readdata$compactness))
print(median(readdata$compactness))

print(min(readdata$symmetry))
print(max(readdata$symmetry))
print(mean(readdata$symmetry))
print(median(readdata$symmetry))

print(min(readdata$fractal_dimension))
print(max(readdata$fractal_dimension))
print(mean(readdata$fractal_dimension))
print(median(readdata$fractal_dimension))

# Delete column : texture
readdata$texture = NULL
View(readdata)

# Add column : age

newcol<-c(1:100)
readdata$age<-newcol
write.csv(readdata,"Prostate_cancer.csv",row.names = FALSE)
View(readdata)


subdata<-subset(readdata,age == 100)
print(subdata)

subdata2<-subset(readdata,id == 10)
print(subdata2)

subdata3<-subset(readdata,age > 90 & age < 95)
print(subdata3)



subdata4<-subset(readdata,age == 90 | age == 95)
print(subdata4)

subdata5<-subset(readdata,age == 90 | radius == 12)
print(subdata5)



