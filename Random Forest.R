## Random Forest #
# Company Data ##
companydata<-read.csv("C://Users//lenovo//Desktop//R studio//Data Science Assignments//Random Forest//Company_Data.csv")
catsales<-cut(companydata$Sales,breaks = c(0,5,10,15,20),labels = c('Very Low','low','Medium','High'))
companydata1<-data.frame('company data'=companydata,'catsales'=catsales)
library(randomForest)
library(caret)
companydata2<-sum(is.na(companydata1))

model<-randomForest(companydata1$catsales~.,data=companydata1,ntree = 100,mtry = 3)

## Fraud check ##
fraudcheck<-read.csv("C://Users//lenovo//Desktop//R studio//Data Science Assignments//Random Forest//Fraud_check.csv")
library(caret)
library(randomForest)
catincome<-cut(fraudcheck$Taxable.Income,breaks = c(0,30000,99700),labels = c('risky','good'))
fraudcheck1<-data.frame('fraudcheck'=fraudcheck,'catincome'=catincome)
model<-randomForest(catincome~.,data=fraudcheck1,ntree=100,mtry=3)
print(model)
pred<-predict(model)
View(pred)
a<-table(pred,catincome)
View(a)
sum(diag(a))/sum(a)