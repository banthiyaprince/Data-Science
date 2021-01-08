creditcard<-read.csv("C://Users//lenovo//Desktop//R studio//Data Science Assignments//Logistic Regression//creditcard.csv")
str(creditcard)
creditcard[creditcard$card=='yes',]$card<-"1"
creditcard[creditcard$card=='no',]$card<-"0"
creditcard$card<-as.factor(creditcard$card)
creditcard[creditcard$owner=='yes',]$owner<-"1"
creditcard[creditcard$owner=='no',]$owner<-"0"
creditcard$owner<-as.factor(creditcard$owner)
creditcard[creditcard$selfemp=='yes',]$selfemp<-"1"
creditcard[creditcard$selfemp=='no',]$selfemp<-"0"
creditcard$selfemp<-as.factor(creditcard$selfemp)
str(creditcard)
model<-glm(card~.,family = 'binomial',data = creditcard,maxit=100)
summary(model)
prob<-predict(model,type = 'response',creditcard)
confusion<-table(prob>0.5,creditcard$card)
confusion
accuracy<-sum(diag(confusion)/sum(confusion))
accuracy