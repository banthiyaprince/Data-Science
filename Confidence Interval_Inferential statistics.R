#Inferential Stats#confiedence interval
library(gmodels)
library(nycflights13)
flg<-nycflights13::flights
#Practice 1#
dep_delay<-(flg$dep_delay)
is.na(dep_delay)
dep_delay1<-dep_delay[!is.na(dep_delay)]
ci(dep_delay1,confidence = 0.95)

#Practice 2 #
dep_time<-(flg$dep_time)
is.na(dep_time)
dep_time1<-dep_time[!is.na(dep_time)]
ci(dep_time1,confidence = 0.95)

#Practice 3#
arr_delay<-(flg$arr_delay)
is.na(arr_delay)
arr_delay1<-arr_delay[!is.na(arr_delay)]
ci(arr_delay1,confidence=0.95)
