#assigning values to x (vector)
x<-c(1,5,7,8)
#data frames # practice 1
df<-data.frame(x=c(1,3,4),y=c('a','b','c'))
df[1,1]
df[3,]
df[c(1,3),1]
df[c(1,3),]
df[c(1,3),2]
#practice 2
df<-data.frame(x=c(1,2,3),y=c(4,5,6),z=c(7,8,9))
df[2,]
df[c(1,3),]
df[c(1,3),2]
df[c(1,3),c(1,3)]

