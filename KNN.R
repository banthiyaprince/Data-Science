##KNN##
## Glass ##
KNN<-read.csv("C://Users//lenovo//Desktop//R studio//Data Science Assignments//KNN//glass.csv")
is.na(KNN)
sum(is.na(KNN))
library(e1071)
library(caret)
ctrl<-trainControl(method = 'cv')
myknnmodel<-train(Type~.,data = KNN,method='knn',trcontrol=ctrl,tuneGrid=expand.grid(k=c(1,2,10,20)))
myknnmodel