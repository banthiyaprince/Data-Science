## Wine ###PCA##
wine<-read.csv("C://Users//lenovo//Desktop//R studio//Data Science Assignments//PCA//wine.csv")
wine1<-scale(wine[,2:14])
PCA<-princomp(wine1)
summary(PCA)
PCA$scores
plot(PCA$scores,col='red',cex=0.2)
text(PCA$scores,labels = c(1:178),cex = 0.5)