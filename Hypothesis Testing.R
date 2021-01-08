## Hypothesis Testing ##
## Cutlets##
cutlets<-read.csv('C://Users//lenovo//Desktop//R studio//Data Science Assignments//Hypothesis Testing//Cutlets.csv')
x<-cutlets$Unit.A
y<-cutlets$Unit.B
mean(x)
mean(y)
t.test(x,y,mu=0,alternative = 'two.sided',conf.level = 0.95)

## LabTAT ###
LabTAT<-read.csv('C://Users//lenovo//Desktop//R studio//Data Science Assignments//Hypothesis Testing//LabTAT.csv')
a<-LabTAT$Laboratory.1
b<-LabTAT$Laboratory.2
c<-LabTAT$Laboratory.3
d<-LabTAT$Laboratory.4
mean(a)
mean(b)
mean(c)
mean(d)
t.test(a,b,mu=0,alternative = 'two.sided',conf.level = 0.95)
t.test(a,c,mu=0,alternative = 'two.sided',conf.level = 0.95)
t.test(a,d,mu=0,alternative = 'two.sided',conf.level = 0.95)
t.test(c,b,mu=0,alternative = 'two.sided',conf.level = 0.95)
t.test(d,b,mu=0,alternative = 'two.sided',conf.level = 0.95)
t.test(c,d,mu=0,alternative = 'two.sided',conf.level = 0.95)

## Buyer Ratio ##
buyerratio<-read.csv('C://Users//lenovo//Desktop//R studio//Data Science Assignments//Hypothesis Testing//BuyerRatio.csv')
tables<-table(buyerratio$East,buyerratio$West)
chisq.test(tables)

## Faltoons ##
faltoons<-read.csv('C://Users//lenovo//Desktop//R studio//Data Science Assignments//Hypothesis Testing//Faltoons.csv')
x<-faltoons$Weekdays
table(x)
y<-faltoons$Weekend
table(y)
prop.test(x=c(113,167),n=c(400,400),alternative = 'less')
