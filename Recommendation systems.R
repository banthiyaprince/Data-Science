## Recommendation systems##
books<-read.csv("C://Users//lenovo//Desktop//R studio//Data Science Assignments//Recommendation Systems//book.csv")
library(plyr)
library(recommenderlab)
library(caTools)
library(Matrix)
hist(books$Book.Rating)
book_matrix<-as(books,'realRatingMatrix')
book_matrix@data
book_model<-Recommender(book_matrix,method='UBCF')
recommendedbook<-predict(book_model,book_matrix,n=3)
d<-as(recommendedbook,'list')
df<-ldply(d,data.frame)
df