salarydata<-read.csv("C://Users//lenovo//Desktop//R studio//Data Science Assignments//Support Vector Machines//SalaryData_Train.csv")
salarydata$workclass<-as.factor(salarydata$workclass)
salarydata$education<-as.factor(salarydata$education)
salarydata$educationno<-as.factor(salarydata$educationno)
salarydata$maritalstatus<-as.factor(salarydata$maritalstatus)
salarydata$occupation<-as.factor(salarydata$occupation)
salarydata$relationship<-as.factor(salarydata$relationship)
salarydata$race<-as.factor(salarydata$race)
salarydata$sex<-as.factor(salarydata$sex)
salarydata$native<-as.factor(salarydata$native)
salarydata$Salary<-as.factor(salarydata$Salary)
salarydatatrain<-salarydata[1:20000,]
salarydatatest<-salarydata[20001:30161,]
library(kernlab)
library(e1071)
salary_classifier<-ksvm(Salary~.,data=salarydatatrain,kernel='vanilladot')
salarypredict<-predict(salary_classifier,salarydatatest)
agreement<-salarypredict == salarydatatest$Salary
prop.table(table(agreement))
Salary_classifier_rbf <- ksvm(Salary ~ ., data = salarydatatrain, kernel = "rbfdot")
salary_predictions_rbf <- predict(Salary_classifier_rbf, salarydatatest)
agreement_rbf <- salary_predictions_rbf == salarydatatest$Salary
table(agreement_rbf)
prop.table(table(agreement_rbf))
