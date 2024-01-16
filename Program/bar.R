# bar chart

# a bar chart uses rectangular bars to visualize data. bar charts can be displayed horizontally or vertically.
# the height or length of the bars are proportional to the values they represent.

# we uses the barplot() function to draw a vertical bar chart.

# lets create bar chart : 
x<-c("madhav","krishna","narayan","govind")
y<-c(20,21,23,25)
barplot(y,names.arg = x)

# x variable represents values in the x-axis.
# y variable represents values in the y-axis.
#then we use the barplot() function to create a bar chart of the values 
#names.arg define the names of each observation in the x-axis
#
#bar color : 
#use the col parameter to change the color of the bars :  

x<-c("A","B","C","D")
y<-c(2,4,6,8)
barplot(y,names.arg = x,col = "red")


# to change the bar texture, use the density parameter : 
barplot(y,names.arg = x,density = 10,col = "red")

# bar width : use the width parameter to change the width of the bars:
barplot(y,names.arg = x,width = c(1,2,3,4),col = "red",density = 10)

# horizontal bars : if we want the bars to be displayed horizontally instead of vertically, use
# horiz = TRUE

barplot(y,names.arg = x,horiz = TRUE)

