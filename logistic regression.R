claimants<-read.csv("C://Users//lenovo//Documents//R codes//claimants.csv")
sum(is.na(claimants))
claimants<-na.omit(claimants)
logit<-glm(ATTORNEY~factor(CLMSEX)+factor(CLMINSUR)++ factor(SEATBELT)+ CLMAGE + LOSS,family = 'binomial',data = claimants)
summary(logit)
prob=predict(logit,type = 'response',claimants)
confusion<-table(prob>0.5,claimants$ATTORNEY)
confusion
Accuracy<-sum(diag(confusion))/sum(confusion)
Accuracy
install.packages("ROCR")
install.packages("pROC")
library(ROCR)
library(pROC)
rocrpred<-prediction(prob,claimants$ATTORNEY)
rocrperf<-performance(rocrpred,'tpr','fpr')
plot(rocrperf,colorize=T,text.adj=c(-0.2,1.7))
auc<- auc(claimants$ATTORNEY~prob)
auc