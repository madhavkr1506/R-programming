# scatter plot

# the plot() function is used to plot numbers against each other.
# a scatter plot is a type of plot used to display the relationship between two numerical variables, and plot one dot for each observation.

# it needs two vectors of same length, one for the x-axis and one for the y-axis.

x<-c(1,2,3,4,5)
y<-c(6,7,8,9,10)
plot(x,y)

plot(x,y,main = "Madhav graph",xlab = "X-axis",ylab = "Y-axis")


# compare plots

# to compare the plot with another plot, use the points() function. 

x1<-c(11,12,13,14,15,10,74,56,57,34)
y1<-c(16,17,18,19,20,33,56,78,45,67)
x2<-c(16,17,18,19,20,21)
y2<-c(11,12,13,14,15,16)
plot(x1,y1,main = "Madhav graph",xlab = "X-axis",ylab = "Y-axis",col="red",cex=1)
points(x2,y2,col="orange",cex=1)



