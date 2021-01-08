## Simple linear Regression  ##
## Calories Consumed ##
calories_consumed<-read.csv('C://Users//lenovo//Desktop//R studio//Data Science Assignments//Simple Linear Regression//calories_consumed.csv')
model<-lm(Weight~Calories,data=calories_consumed)
summary(model)
pred<-predict(model)
pred
finaldata<-data.frame(calories_consumed,pred,'error'=calories_consumed$Weight-pred)
new_calories<-data.frame(Calories=c(1200,2000))
WT1<-predict(model,new_calories)
WT1
## Delivery_Time ##
Delivery_Time<-read.csv('C://Users//lenovo//Desktop//R studio//Data Science Assignments//Simple Linear Regression//Delivery_Time.csv')
model<-lm(Delivery.Time~Sorting.Time,data=Delivery_Time)
summary(model)
pred<-predict(model)
pred
finaldata<-data.frame(Delivery_Time,pred,'error'=Delivery_Time$Delivery.Time-pred)
DT<-data.frame(Sorting.Time=c(5,8))
DT1<-predict(model,DT)
DT1

##Churn_out rate##
emp_data<-read.csv('C://Users//lenovo//Desktop//R studio//Data Science Assignments//Simple Linear Regression//emp_data.csv')
model<-lm(Churn_out_rate~Salary_hike,data=emp_data)
summary(model)
pred<-predict(model)
pred
finaldata<-data.frame(emp_data,pred,'error'=emp_data$Churn_out_rate-pred)
DT<-data.frame(Salary_hike=c(1625,1775))
DT1<-predict(model,DT)
DT1

## Salary Data ##
Salary_Data<-read.csv('C://Users//lenovo//Desktop//R studio//Data Science Assignments//Simple Linear Regression//Salary_Data.csv')
model<-lm(Salary~YearsExperience,data=Salary_Data)
summary(model)
pred<-predict(model)
pred
finaldata<-data.frame(Salary_Data,pred,'error'=Salary_Data$Salary-pred)
ye<-data.frame(YearsExperience=c(4,6))
sal<-predict(model,ye)
sal