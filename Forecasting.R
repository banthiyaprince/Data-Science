## Forecasting##
airlines<-read.csv("C://Users//lenovo//Desktop//R studio//Data Science Assignments//Forecasting//Airlines.csv")
library(Metrics)
plot(airlines$Passengers,type = 'l')
X<- data.frame(outer(rep(month.abb,length = 96), month.abb,"==") + 0 )
colnames(X)<-month.abb
View(X)
airlines1<-cbind(airlines,X)
View(airlines1)
airlines1['t']<-1:96
View(airlines1)
airlines1['log_passengers']<-log(airlines1['Passengers'])
airlines1['t_sq']<-airlines1['t']*airlines1['t']
attach(airlines1)
train<-airlines1[1:86,]
test<-airlines1[87:96,]
## Linear model##
linearmodel<-lm(Passengers~t,data = train)
lmpredict<-data.frame(predict(linearmodel,interval = 'predict',newdata=test))
linearrmse<-rmse(test$Passengers,lmpredict$fit)
linearrmse
## Log / exponential ##
logmodel<-lm(log_passengers~t,data=train)
expopredict<-data.frame(predict(logmodel,interval = 'predict',newdata = test))
expormse<-rmse(test$Passengers,expopredict$fit)
expormse
## Quadratic ###
quadmodel<-lm(Passengers~t+t_sq,data = train)
quadpred<-data.frame(predict(quadmodel,interval = 'predict',newdata = test))
quadrmse<-rmse(test$Passengers,quadpred$fit)
quadrmse
## Additive Seasonality##
add_seas<-lm(Passengers~Jan+Feb+Mar+Apr+May+Jun+Jul+Aug+Sep+Oct+Nov,data = train)
add_seas_pred<-data.frame(predict(add_seas,newdata = test,interval = 'predict'))
add_seas_predrmse<-rmse(test$Passengers,add_seas_pred$fit)
add_seas_predrmse
## Additive seasonality with linear##
add_seas_linear<-lm(Passengers~t+Jan+Feb+Mar+Apr+May+Jun+Jul+Aug+Sep+Oct+Nov,data = train)
add_seas_linear_pred<-data.frame(predict(add_seas_linear,newdata = test,interval = 'predict'))
add_seas_linear_predrmse<-rmse(test$Passengers,add_seas_linear_pred$fit)
add_seas_linear_predrmse
## Additive seasonnality with Quadratic ##
add_seas_Quad<-lm(Passengers~t+t_sq+Jan+Feb+Mar+Apr+May+Jun+Jul+Aug+Sep+Oct+Nov,data = train)
add_seas_Quad_pred<-data.frame(predict(add_seas_Quad,newdata = test,interval = 'predict'))
add_seas_Quad_predrmse<-rmse(test$Passengers,add_seas_Quad_pred$fit)
add_seas_Quad_predrmse
## Multiplicative Seasonality##
multi_sea_model<-lm(log_passengers~Jan+Feb+Mar+Apr+May+Jun+Jul+Aug+Sep+Oct+Nov,data = train)
multi_sea_pred<-data.frame(predict(multi_sea_model,newdata=test,interval='predict'))
rmse_multi_sea<-rmse(test$Passengers,exp(multi_sea_pred$fit))
rmse_multi_sea

Table_rmse<-data.frame('model'=c('linearrmse','expormse','quadrmse','add_seas_predrmse'),'RMSE'=c(linearrmse,expormse,quadrmse,add_seas_predrmse))
colnames(Table_rmse)<-c('model','RMSE')
View(Table_rmse)
## Coca cola sales##Holt winters##
cocacola<-read.csv("C://Users//lenovo//Desktop//R studio//Data Science Assignments//Forecasting//CocaCola.csv")
library(forecast)
library(fpp)
library(smooth)
library(tseries)
cocacola1<-ts(cocacola$Sales,frequency = 4,start = c(86))
View(cocacola1)
plot(cocacola1)
train<-cocacola1[1:38]
test<-cocacola1[39:42]
train<-ts(train,frequency = 4)
test<-ts(test,frequency = 4)
plot(train)
hwc<-HoltWinters(train)
hwc
hwcpred<-predict(hwc,n.ahead = 4)
hwcpred
plot(forecast(hwc,h=4))