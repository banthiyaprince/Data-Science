### Company Data ###
companydata<-read.csv("C://Users//lenovo//Desktop//R studio//Data Science Assignments//Descision Trees//Company_Data.csv")
library(caret)
library(C50)
set.seed(50)
catsales<-cut(companydata$Sales,breaks = c(0,5,10,15,20),labels = c('Very Low','low','Medium','High'))
companydata1<-data.frame('company data'=companydata,'catsales'=catsales)
intraining<-createDataPartition(companydata1$catsales,p=0.7,list = F)
training<-companydata1[intraining,]
testing<-companydata1[-intraining,]
model<-C5.0(catsales~.,data = training)
summary(model)
pred<-predict.C5.0(model,testing[,-12])
View(pred)
a<-table(testing$catsales,pred)
View(a)
sum(diag(a))/sum(a)
## Bagging##
library(ipred)
set.seed(7)
mybag<-bagging(companydata1$catsales~.,data = companydata1,nbagg=10)
pred<-predict(mybag)
View(pred)
a<-table(companydata1$catsales,pred)
#Boosting method
model<-C5.0(training$catsales~.,data=training,trials=10)
summary(model)
pred<-predict.C5.0(model,testing[,-12])
b<-table(testing$catsales,pred)
sum(diag(b))/sum(b)
## Fraud Check ##
fraudcheck<-read.csv("C://Users//lenovo//Desktop//R studio//Data Science Assignments//Descision Trees//Fraud_check.csv")
library(caret)
library(C50)
set.seed(50)
catincome<-cut(fraudcheck$Taxable.Income,breaks = c(0,30000,99700),labels = c('risky','good'))
fraudcheck1<-data.frame('fraudcheck'=fraudcheck,'catincome'=catincome)
intraining<-createDataPartition(fraudcheck1$catincome,p=0.7,list = F)
training<-fraudcheck1[intraining,]
testing<-fraudcheck1[-intraining,]
model<-C5.0(catincome~.,data = training)
summary(model)
pred<-predict.C5.0(model,testing[,-7])
View(pred)
a<-table(testing$catincome,pred)
View(a)
sum(diag(a))/sum(a)
## Bagging##
library(ipred)
set.seed(7)
mybag<-bagging(fraudcheck1$catincome~.,data = fraudcheck1,nbagg=10)
pred<-predict(mybag)
View(pred)
a<-table(fraudcheck1$catincome,pred)
View(a)
sum(diag(a))/sum(a)
## Boosting ##
model<-C5.0(training$catincome~.,data=training,trials=10)
summary(model)
pred<-predict.C5.0(model,testing[,-12])
b<-table(testing$catincome,pred)
sum(diag(b))/sum(b)