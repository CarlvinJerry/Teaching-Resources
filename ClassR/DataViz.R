#Bar Charts
#>>barplot() #Horizontal/Vertical
#Syntax
#>>barplot(data, xlab,ylab,main, names.arg,col)

#Example-basic bar plot
agesData <- ages

barplot(agesData$Age)

#Add labels/ colors
barplot(agesData$Age, xlab = "Name", ylab = "Age", main = "Plotting Ages", col = c("Blue","red","green"),
        border = c("red","green","blue"))


#Make chart horizontal & Argument names
barplot(agesData$Age, xlab = "Name", ylab = "Age", main = "Plotting Ages", col = c("Blue","red","green"),
        border = c("red","green","blue"), horiz = T, names.arg = agesData$Name )

#Stacked Bar Chart
counts <- table(mtcars$vs, mtcars$gear)
barplot(counts, main = "Cars distribution by Gears and Vs", ylab = "Number of Cars", xlab = "Gears",
        col = c("blue","red"), legend= rownames(counts))

#Grouped bar chart
barplot(counts, main = "Cars distribution by Gears and Vs", ylab = "Number of Cars", xlab = "Gears",
        col = c("blue","red"), legend= rownames(counts), beside = T )

##Box Plot-----------------------------------------------------------------------------------------------------------------------------------------------
# Box Plot
#Shows you how well data is distributed. It represents the min, max, median and qiantile values in a dataset

#Syntax
#>>boxplot(x,data, notch, varwidth, main, names)
 # where x is a vector or formula
 # data is the data frame
 # notch - logical values.TRUE,draws a notch.
 # varwidth - logical. TRUE draws width of the boxplot proportionate to the sample sample size
 # names - group labels
 # main- plot title

#Creating a box plot
boxplot(mpg ~ cyl, data = mtcars, xlab = "No. Of Cylinders", ylab = "Miles Per Gallon", main ="Car Mileage")

#Add a notch to see how medians relate to each other
boxplot(mpg ~ cyl, data = mtcars, xlab = "No. Of Cylinders", ylab = "Miles Per Gallon", main ="Car Mileage",names = c("High", "Medium", "Low"),
        notch = T, col = c("Blue","red","green"))

##Histogram-----------------------------------------------------------------------------------------------------------------------------------------------
#Histogram
#Used to visualize the distribution of data by plotting frequencies against continuous ranges of said data.
#Syntax
#>>hist(v-vector containing numeric values used in the histogram, main,xlab, ylab, xlim -specify range of values on x-axis, ylim - specify range of values on y-axis, breaks- specifies number of bins, col, border)

#Plot a histogram
hist(AirPassengers,main= "Air Passengers", xlab = "Passengers", ylab = "Frequency",border = "black", col = "red", xlim = c(100, 800) ,
     breaks = 5, ylim= c(0,60))

##Line Plot-----------------------------------------------------------------------------------------------------------------------------------------------
#Line Plot - Used to identify trend in data
#Syntax
#>> plot(v- vector containing values, type- specifies the type of line (p -points, l - lines, o - both points and lines), xlab, ylab, main, col)

# Line Plot
data <-  c(1:10, 5:23, 15:26)

plot(data, type = "p") #points only
plot(data, type = "l") #Lines only
plot(data, type = "o") #Both

plot(data, type = "o", ylab = "Ksh", xlab = "Day", main= "Expenditure Data", col = "green")

#Multiple line plots on a chart
data2 <-  c(1:15, 15:2, 3:26)
plot(data, type = "l", ylab = "Ksh", xlab = "Day", main= "Expenditure Data", col = "green")
lines( data2, type = "l", col="red")
lines( data2 *.23, type = "l", col="blue")
lines( data2 + 2.23, type = "l", col="black")


##Scatter Plot-----------------------------------------------------------------------------------------------------------------------------------------------
#Show points plotted in a cartesian plane. Each point represents a value of two variables.
#Syntax
#>> plot(x,y, main,xlab, ylab, xlim, ylim, axes)

#Scatter Plot
input <- mtcars[, c('wt','mpg')]

plot(x= input$wt, y= input$mpg, xlab = "Weight", ylab = "Mileage", xlim = c(1.5, 6), ylim = c(5,29), main = "Weight vs Mileage", col = "red")



##Scatter Plot Matrix-----------------------------------------------------------------------------------------------------------------------------------------------
# Visualizes correlation between variables. It's a matrix of scatter plots
#>> pairs(formula, data)
#Formula - series of variables used in pairs
#Data- data containing the variables

#Scatter plot matrix
pairs(~wt+mpg+disp+cyl, data = mtcars, main="Scatterplot Matrix")

##Matplot-----------------------------------------------------------------------------------------------------------------------------------------------
#Plots columns of matricres individually as a function of X
#> Syntax
#>> matplot(x, cbind(y1,y2))
#x, y1, and y2 are vectors or column of a matrix or data frame

x <- 1:10
y <- x^2
z <-  x^2-2*x
matplot(x, cbind(y,z),pch = c(16,1),  xlab = "x", ylab = "x^2 and x^2-2*x")
legend(1,100, legend = c("y","z"), pch = c(16,1), bty = "y")



#Dot Plots-------------------------------------------------------------------------
#Used as an alternative to bar charts
#Syntax
#>> dotchart (NumericVector,  cex = 1, col = “black”, labels = NULL, main = NULL, pch = 1, sub = NULL, xlab = NULL)
dotchart(PlantGrowth$weight, col = "blue", pch = 1, labels =PlantGrowth$group,
         main="group vs weight",xlab="weight")


#Grouped dot plot
pg <- PlantGrowth
pg$color[pg$group=="ctrl"] <- "red"
pg$color[pg$group=="trt2"] <- "black"
pg$color[pg$group=="trt1"] <- "blue"

# plot the dot chart
dotchart(PlantGrowth$weight, labels=PlantGrowth$group,cex=0.8,groups= PlantGrowth$group, main="group vs weight",
         xlab="weight", gcolor="black", color=pg$color)
