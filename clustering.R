## Crime Data ###
crimedata<-read.csv("C://Users//lenovo//Desktop//R studio//Data Science Assignments//Clustering//crime_data.csv")
crimedata1<-scale(crimedata[,2:5])
View(crimedata1)
d<-dist(crimedata1,method = 'euclidean')
as.matrix(d)
fit<-hclust(d,method = 'average')
library(factoextra)
fviz_dend(fit)
fviz_dend(fit,k=5,color_labels_by_k = TRUE,rect = TRUE)
cluster<-cutree(fit,k=5)
View(cluster)
finaloutput<-data.frame('state'=crimedata[,1],'cluster'=cluster)
View(finaloutput)
fviz_dend(fit,k=5,type = 'phylogenic',repel = TRUE)
## different distance method
d<-dist(crimedata1,method = 'euclidean')
as.matrix(d)
fit<-hclust(d,method = 'centroid')
library(factoextra)
fviz_dend(fit)
fviz_dend(fit,k=5,color_labels_by_k = TRUE,rect = TRUE)
cluster<-cutree(fit,k=5)
View(cluster)
finaloutput<-data.frame('state'=crimedata[,1],'cluster'=cluster)
View(finaloutput)
## different distance method##
d<-dist(crimedata1,method = "canberra")
as.matrix(d)
fit<-hclust(d,method = "median")
library(factoextra)
fviz_dend(fit)
fviz_dend(fit,k=5,color_labels_by_k = TRUE,rect = TRUE)
cluster<-cutree(fit,k=5)
View(cluster)

### East West Airlines###
eastwestairlines<-read.csv("C://Users//lenovo//Desktop//R studio//Data Science Assignments//Clustering//EastWestAirlines.csv")
library(factoextra)
fviz_nbclust(eastwestairlines[,-1],kmeans,method = 'wss')+labs(sutitle='elbow method')
km<-kmeans(eastwestairlines[,-1],4)
km$cluster
km$centers
clust<-data.frame('ID'=eastwestairlines[,1],'cluster'=km$cluster)
View(clust)
## different K values##
km<-kmeans(eastwestairlines[,-1],3)
km$cluster
km$centers
clust<-data.frame('ID'=eastwestairlines[,1],'cluster'=km$cluster)
View(clust)
##different k values
km<-kmeans(eastwestairlines[,-1],5)
km$cluster
km$centers
clust<-data.frame('ID'=eastwestairlines[,1],'cluster'=km$cluster)
View(clust)
