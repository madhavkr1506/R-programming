# pie chart

# pie chart is a circular graphical view of data
# we use pie() function to draw pie charts

x<-c(1,2,3,4,5)
pie(x)

# note by default : the plotting of the first pie start from the x-axis and move counterclockwise.

# the size of each pie is determined by comparing the value with all the other values, by using this formula : 
# the value divided by the sum of all values : x/sum(x)

# start angle : 
# we can change the start angle of the pie chart with the init.angle parameter.
# the value of init.angle is defined with angle in degrees, where default angle is zero.

x<-c(1,2,3,4,5)
pie(x,init.angle = 90)

# label and header
# use label parameter to add a label to the pie chart, and use the main parameter to add a header.

x<-c(1,2,3,4,5)
mylabel<-c("Madhav","krishna","mahadev","ganesh","narayana")
pie(x,init.angle = 60,labels = mylabel,main = "Madhav pie")

# colors : we can add a color to each pie with the col parameter:
color<-c("yellow","pink","orange","green","skyblue")
pie(x,init.angle = 60,labels = mylabel,main = "Madhav pie",col = color)

# legend
# to add a list of explanation for each pie, use the legend() function:

legend("bottomright",mylabel,fill=color)


# the legend can be positioned as either : 
# bottomright, bottom, bottomleft,left,topleft,top,topright,right,center

