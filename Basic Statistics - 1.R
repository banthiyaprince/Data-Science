Q7<-read.csv('C://Users//lenovo//Desktop//R studio//Data Science Assignments//Basic Statistics - 1//Q7.csv')
summary(Q7)
plot(Q7)
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
mode_points<-getmode(Q7$Points)
mode_points
mode_score<-getmode(Q7$Score)
mode_score

mode_weigh<-getmode(Q7$Weigh)
mode_weigh

## Q8##
set<-c(108, 110, 123, 134, 135, 145, 167, 187, 199)
mean(set)

## Q9 ##
Q9_a<-read.csv('C://Users//lenovo//Desktop//R studio//Data Science Assignments//Basic Statistics - 1//Q9_a.csv')
require(e1071)
skewness(Q9_a$speed)
skewness(Q9_a$dist)
kurtosis(Q9_a$speed)
kurtosis(Q9_a$dist)
Q9_b<-read.csv('C://Users//lenovo//Desktop//R studio//Data Science Assignments//Basic Statistics - 1//Q9_b.csv')
skewness(Q9_b$SP)
skewness(Q9_b$WT)
kurtosis(Q9_b$SP)
kurtosis(Q9_b$WT)

## Q12 ##
Q12<-c(34,36,36,38,38,39,39,40,40,41,41,41,41,42,42,45,49,56)
summary(Q12)
hist(Q12)
var(Q12)
sd(Q12)

## Q20#
Q20<-read.csv('C://Users//lenovo//Desktop//R studio//Data Science Assignments//Basic Statistics - 1//cars.csv')
mean(Q20$MPG)
sd(Q20$MPG)
pnorm(38,34.42,9.13)
pnorm(40,34.42,9.13)
pnorm(20,34.42,9.13)
pnorm(50,34.42,9.13)

## Q21###
Q21<-read.csv('C://Users//lenovo//Desktop//R studio//Data Science Assignments//Basic Statistics - 1//cars.csv')
qqnorm(Q21$MPG)
shapiro.test(Q21$MPG)
library(e1071)
kurtosis(Q21$MPG)
skewness(Q21$MPG)
mean(Q21$MPG)
median(Q21$MPG)

##Q21_b##
Q21b<-read.csv('C://Users//lenovo//Desktop//R studio//Data Science Assignments//Basic Statistics - 1//WC_AT.csv')
qqnorm(Q21b$Waist)
shapiro.test(Q21b$Waist)
library(e1071)
kurtosis(Q21b$Waist)
skewness(Q21b$Waist)
mean(Q21b$Waist)
median(Q21b$Waist)
## Q24##
pt(-0.471,17)