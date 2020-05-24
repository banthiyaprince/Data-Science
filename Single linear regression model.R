#Single linear regression model#
#this is uses when there are 2 variables x & y.
# y variable is dependant on x independant variable.
#like marks will be directly dependant on no. of hrs you study.
#like marks obtaines is indirectly proportional to no.of hrs wasted on social media
#Practice 1
getwd()
setwd('C://Users//lenovo//Documents//R codes')
Nd<-read.csv('C://Users//lenovo//Documents//R codes//Nd.csv')
View(Nd)
model<-lm(sunday~daily,data = Nd)
summary(model)
Sunday<-data.frame(daily=c(300))
sun1<-predict(model,Sunday)
sun1
pred<-predict(model)
pred
finaldata<-data.frame(Nd,pred,'error'=Nd$sunday-pred)
View(finaldata)

#Practice 2#
WC_AT<-read.csv('C://Users//lenovo//Documents//R codes//WC_AT.csv')
View(WC_AT)
model<-lm(AT~Waist,data = WC_AT)
summary(model)
AT1<-data.frame(Waist=c(70))
AT1result<-predict(model,AT1)
AT1result
model1<-predict(model)
model1
finaldata<-data.frame(WC_AT,model1,'error'=WC_AT$AT-model1)
finaldata