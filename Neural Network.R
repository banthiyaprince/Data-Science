## Neural Network##
## startup##
startups<-read.csv("C://Users//lenovo//Desktop//R studio//Data Science Assignments//Neural Network//50_Startups.csv")
normalize<-function(x){return((x-min(x))/(max(x)-min(x)))}
startups1<-startups[,-4]
startupnorm<-as.data.frame(lapply(startups1,normalize))
startuptrain<-startupnorm[1:35,]
startuptest<-startupnorm[36:50,]
library(neuralnet)
model<-neuralnet(Profit~.,data = startuptrain)
plot(model)
modelresult<-compute(model,startuptest)
predicted<-modelresult$net.result
cor(predicted,startuptest)
newmodel<-neuralnet(Profit~.,data = startuptrain,hidden = c(4,2))
plot(newmodel)
modelresult1<-compute(model,startuptest)
predicted1<-modelresult1$net.result
cor(predicted1,startuptest)