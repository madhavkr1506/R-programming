# R graphics

# 1. R plot

# the plot() function is used to draw points(markers) in a diagram.
# the function takes parameters for specifying points iin the diagram.

# parameter 1 : x-axis
# parameter 2 : y-axis

# draw one point in the diagram, at position(1) and position(3).
plot(1,3)

# draw two points in the diagram, one at position (1,3) and one in position(8,10).
plot(c(1,8),c(3,10))

# how to plot multiple points : 
plot(c(1,2,3,4),c(5,6,7,8))
# here c(1,2,3,4) --> are c(x1,x2,x3,x4,...)
# , and c(5,6,7,8) --> are c(y1,y2,y3,y4,...)

# sequences of points
# if you want to draw dots in a sequence, on both the x and y axis, use the : operator

plot(11:21)

# draw a line 
# the plot() function also takes a type parameter with the value l to draw a line to connect all the points in the diagram.

plot(1:11,type = "l")


# plot labels
# the plot() function also accept other parameters, such as main, xlab,and ylab.
plot(1:7,main = "Madhav Graph",xlab = "X - axis",ylab = "Y - axis")


# graph appearance

# there are many other parameters you can use to change the appearance of the points.

# use col = "color" to add a color to the points
plot(1:5,col="green")


# size : use cex = number to change the size of the points (1 is default, while 0.5 means 50% smaller, and 2 means 100% larger).

plot(1:5,cex=2)

# point shape : (use pch with a value from 0 to 25 to change the point shape format)

plot(1:5,pch=25,cex=2)
plot(1:5,pch=5,cex=2)





















