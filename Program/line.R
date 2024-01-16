# R line

# a line graph has a line that connects all the points in a diagram.
# to create a line, use the plot() function and add the type parameter with a value of "l".

plot(1:10,type = "l")

# lets talk about line color

# the line color is black by default. to change the color, use the col parameter. 

plot(1:10,type = "l",col="red")

# to change the width of the line, use the lwd parameter(1 is default, while 0.5 means 50% smaller, and 2 means 100% larger).

plot(1:10,type = "l",col="blue",lwd=2)

# line styles :
# the line is solid by default. use the lty parameter with a value from 0 to 6 to specify the line format.
# for example : lty = 3 will display a dotted line instead of a solid line.

plot(1:10,type = "l",lwd = 5, lty = 4,col="red")

# available parameter values for lty : 
# 0 : removes the line
# 1 : display a solid line
# 2 : display a dashed line
# 3 : display a dotted line
# 4 : display a "dot dashed" line
# 5 : display a "long dashed" line
# 6 : display a "two dashed" line

# multiple lines : 
# to display more than one line in a graph, use the plot() function together with the lines() function.


line1<-c(1,2,3,4,5,10)
line2<-c(2,5,7,8,9,10)
line3<-c(2,4,7,18,19,10)
plot(line1,type = "l",col = "blue")
lines(line2,type = "l",col = "green")
lines(line3,type = "l",col = "red")






