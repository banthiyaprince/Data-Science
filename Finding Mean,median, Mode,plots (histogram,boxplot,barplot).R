#Practice 1
library(datasets)
airquality<- datasets:: airquality
summary(airquality)
plot(airquality)
plot(airquality$Month)
hist(airquality$Day)
boxplot(airquality)
barplot(airquality$Wind, main = 'wind speed',xlab = 'wind')
barplot(airquality$Wind,main = 'wind speed',ylab = 'm/min',horiz = F)

#Practice 2
library(datasets)
e_quakes<-datasets::quakes
summary(quakes)
plot(quakes$stations)
hist(quakes$mag)
boxplot(quakes)
barplot(quakes$long,main = 'm',ylab = 'meter')
