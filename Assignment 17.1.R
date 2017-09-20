age=16:27
height<-c(61.1, 61.2, 61.8, 62.8, 63.5, 76.1, 77, 78.1, 78.2, 78.8, 79.7, 79.9)
age
length(age)
height
length(height)
> ## age and height each have 12 elements.
  
  # (2) Creating the scatter plot. Plot shows positive correlation. 
  scatter.smooth(x=age,y=height,main="height ~ age")

#(3) Fitting model
dt_x1=data.frame(age,height)
dt_x1
res1<-lm(height~age,data=dt_x1)
res1
summary(res1)
confint(res1)

##Plotting graph (line of best fit) :
x<-age
y<-height
plot(y,x,col = "blue",main = " Age & Height Regression ", abline(lm(x~y)),cex = 1.3,pch = 16,xlab = "age in years",ylab = "Height in cm")
#Equation of best fit:Y=β0 +β1xi 
#β0 = intercept = 25.3593     
#β1= slope = 2.1469
#Equation of line of best fit = y=  25.3593 + 2.1469x 