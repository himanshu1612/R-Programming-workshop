#Set the margin of the plot
#par(mai=c(bottom, left,top,right)

library('MASS')
par(mai=c(10,10,1,1)/10)
plot(Cars93$Min.Price,type='b',ylab = 'Price',ylim = c(0,100))
par(mai=c(10,10,10,10)/10)
plot(Cars93$Min.Price,type='b',ylab = 'Price',ylim = c(0,100))

#plot title
plot(Cars93$Min.Price,type='b',ylab = 'Price',ylim = c(0,100),main='Plot Title')

#x-axis label - use xlab='your x-axis label'
#x-axis label - use ylab='your y-axis label'

plot(Cars93$Min.Price,type='b',ylab = 'your y-axis label',xlab='your x-axis label',ylim = c(0,100),main='Plot Title')

#axis() function is used to enable axis. By default, the botton and left axis are enabled.
#To enable axis on the top and right, use the following code
axis(side = 3)
axis(side = 4)

#To add axis without lebels
axis(side=3,labels = F)
axis(side=4,labels = F)

#To add axis without ticks
axis(side=3,tick = F)
axis(side=4,tick = F)

#manage the distance between axis and label
axis(side=4,labels = T,tick = T,line = .001)

#shift the position of the axis
axis(side=4,labels = T,tick = T,line = .001,pos = 80)

#character type for points
#http://www.statmethods.net/advgraphs/parameters.html
plot(Cars93$Max.Price,main="Price",ylab = 'Price',ylim = c(1,100),type = 'b')
points(Cars93$Min.Price,type = 'b',pch=0,col='red')
legend('topright',c('Minimum price','Maximum Price'),pch = c(1,0),col=c('black','red'))

#changing the line type
plot(Cars93$Max.Price,main="Price",ylab = 'Price',ylim = c(1,100),type = 'b',lty=2)
lines(Cars93$Min.Price,type = 'b',pch=0,col='red',lty=3)
legend('topright',c('Minimum price','Maximum Price'),pch = c(1,0),col=c('black','red'),lty = c(2,3))

#adding the text to the sides of the plot
plot(Cars93$Max.Price,main="Price",ylab = 'Price',ylim = c(1,100),type = 'b',lty=2)
lines(Cars93$Min.Price,type = 'b',pch=0,col='red',lty=3)
legend('topright',c('Minimum price','Maximum Price'),pch = c(1,0),col=c('black','red'),lty = c(2,3))
mtext('Price',side = 4,line = 1)

#plot without axis
plot(Cars93$Max.Price,main="Price",ylab = 'Price',ylim = c(1,100),type = 'b',lty=2,axes = F)
plot(Cars93$Max.Price,main="Price",ylab = 'Price',ylim = c(1,100),type = 'b',lty=2,axes = T)

#bty is used to control the box around the plot
#L shaped box
plot(Cars93$Max.Price,main="Price",ylab = 'Price',ylim = c(1,100),type = 'b',lty=2,axes = T,bty='l')

#complete box
plot(Cars93$Max.Price,main="Price",ylab = 'Price',ylim = c(1,100),type = 'b',lty=2,axes = T,bty='o')

#box in shape of '7'
plot(Cars93$Max.Price,main="Price",ylab = 'Price',ylim = c(1,100),type = 'b',lty=2,axes = T,bty='7')

#box in shape of 'C'
plot(Cars93$Max.Price,main="Price",ylab = 'Price',ylim = c(1,100),type = 'b',lty=2,axes = T,bty='c')

#box in shape of U
plot(Cars93$Max.Price,main="Price",ylab = 'Price',ylim = c(1,100),type = 'b',lty=2,axes = T,bty='u')

#box in shape of ]
plot(Cars93$Max.Price,main="Price",ylab = 'Price',ylim = c(1,100),type = 'b',lty=2,axes = T,bty=']')

#plot without box
plot(Cars93$Max.Price,main="Price",ylab = 'Price',ylim = c(1,100),type = 'b',lty=2,axes = T,bty='n')

#change the axis scale
#  lab=c(x-axis scale, y-axis scale, length)
plot(Cars93$Max.Price,main="Price",ylab = 'Price',ylim = c(1,100),type = 'b',lty=2,axes = T,bty='7',lab=c(10,100,1000))

#style of axis label , 'las' parameter

> plot(Cars93$Max.Price,main="Price",ylab = 'Price',ylim = c(1,100),type = 'b',lty=2,axes = T,bty='7',lab=c(10,20,100),las=0)
> plot(Cars93$Max.Price,main="Price",ylab = 'Price',ylim = c(1,100),type = 'b',lty=2,axes = T,bty='7',lab=c(10,20,100),las=1)
> plot(Cars93$Max.Price,main="Price",ylab = 'Price',ylim = c(1,100),type = 'b',lty=2,axes = T,bty='7',lab=c(10,20,100),las=2)
> plot(Cars93$Max.Price,main="Price",ylab = 'Price',ylim = c(1,100),type = 'b',lty=2,axes = T,bty='7',lab=c(10,20,100),las=3)

#Multiple plots in R

#The following plot has one row and two columns
par(mfrow=c(1,2))
plot(Cars93$Max.Price,main="Max Price",ylab = 'Price',ylim = c(1,100),type = 'b',lty=1)
plot(Cars93$Min.Price,main="Min Price",ylab = 'Price',ylim = c(1,100),type = 'b',lty=2)
#Revert back to original
par(mfrow=c(1,1))









