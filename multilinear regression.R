#multilinear regression# when there is more than one independant variable
mileage<-read.csv('C://Users//lenovo//Documents//R codes//cars.csv')
scatterplot<-plot(mileage)
scatter<-pairs(mileage)
cor(mileage) # there is high corelation between SP & HP,WT & VOL.
model<-lm(MPG~HP+VOL+SP+WT,data = mileage)
summary(model)
install.packages('car')
library(car)
car::vif(model) #to avoid multi collinearity#Variance inflation factor
library(MASS)
stepAIC(model)# to find which model is most suitable
finalmodel<-lm(MPG~HP+VOL+SP,data = mileage)
summary(finalmodel)
plot(finalmodel)
residualPlots(finalmodel)
avPlots(finalmodel)
qqPlot(finalmodel)
influenceIndexPlot(finalmodel)
mileage['HP2']<-mileage$HP*mileage$HP
mileage['SP2']<-mileage$SP*mileage$SP
mileage1<-mileage[-77,]
model2<-lm(MPG~.,data=mileage1)
summary(model2)
plot(model2)
residualPlots(model2)
qqplot(model2)
influenceIndexPlot(model2)
mileage2<-mileage[-c(66,79,81,77,80,71),]
model3<-lm(MPG~.,data=mileage2)
summary(model3)
plot(model3)
residualPlots(model3)
qqplot(model3)
influenceIndexPlot(model3)
