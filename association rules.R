library(arules)
library(arulesViz)
books1<-read.csv('C://Users//lenovo//Desktop//R studio//Data Science Assignments//Association Rules//book.csv')
books1
books2 <- apriori(as.matrix(books1),parameter = list(support=0.002,confidence=0.5,minlen=2))
sortbooks <-sort(books2,by="confidence",decreasing = "TRUE")
plot(sortbooks[1:15],method = "graph",control = list(type="list"))
plot(sortbooks[1:15],method = "grouped",control = list(type="list"))
plot(sortbooks[1:15],method = "paracoord",control = list(type="list"))
plot(sortbooks[1:15],method = "matrix",control = list(type="list"))
p <- head(sortbooks)
detach(package:tm, unload=TRUE)
library(arules)
inspect(p)

books3<-apriori(as.matrix(books1),parameter = list(support=0.002,confidence=0.5,minlen=3))
sortbooks1 <-sort(books3,by="confidence",decreasing = "TRUE")
plot(sortbooks1[1:15],method = "graph",control = list(type="list"))
plot(sortbooks1[1:15],method = "grouped",control = list(type="list"))
plot(sortbooks1[1:15],method = "paracoord",control = list(type="list"))
plot(sortbooks1[1:15],method = "matrix",control = list(type="list"))
inspect(sortbooks1[1:10])

books4<-apriori(as.matrix(books1),parameter = list(support=0.003,confidence=0.8,minlen=2))
sortbooks2 <-sort(books4,by="confidence",decreasing = "TRUE")
plot(sortbooks2[1:15],method = "graph",control = list(type="list"))
plot(sortbooks2[1:15],method = "grouped",control = list(type="list"))
plot(sortbooks2[1:15],method = "paracoord",control = list(type="list"))
plot(sortbooks2[1:15],method = "matrix",control = list(type="list"))
inspect(sortbooks2[1:10])

books5<-apriori(as.matrix(books1),parameter = list(support=0.003,confidence=0.8,minlen=3))
sortbooks3<-sort(books4,by="confidence",decreasing = "TRUE")
plot(sortbooks3[1:15],method = "graph",control = list(type="list"))
plot(sortbooks3[1:15],method = "grouped",control = list(type="list"))
plot(sortbooks3[1:15],method = "paracoord",control = list(type="list"))
plot(sortbooks3[1:15],method = "matrix",control = list(type="list"))
inspect(sortbooks3[1:10])

#so we can say from the above association rules that ItalAtlas and Refbks have strong association
#ItalArt and RefBks should be kept together
#ItalCook and Cookbks should be kept togetherN

## Movies###
movies <- read.transactions("C://Users//lenovo//Desktop//R studio//Data Science Assignments//Association Rules//my_movies.csv", format="basket")
View(movies)
str(movies)
movies1 <- read.csv("C://Users//lenovo//Desktop//R studio//Data Science Assignments//Association Rules//my_movies.csv")
movies1 <-movies1[,6:11]
View(movies1)
rulem <- apriori(as.matrix(movies1),parameter = list(supp=0.001,conf=0.50))
inspect(rulem[1:10])
plot(rulem,method = "graph",control = list(type="list"))
plot(rulem,method = "mosaic",control = list(type="list"))
plot(rulem,method = "grouped",control = list(type="list"))
plot(rulem[1:10],method = "paracoord",control = list(type="list"))
plot(rulem,method = "scatter",control = list(type="list"))
plot(rulem,method = "matrix",control = list(type="list"))

rulem1 <- apriori(as.matrix(movies1),parameter = list(supp=0.001,conf=0.80,minlen=3))
inspect(rulem)
plot(rulem1,method = "graph",control = list(type="list"))
plot(rulem1,method = "mosaic",control = list(type="list"))
plot(rulem1,method = "grouped",control = list(type="list"))
plot(rulem1,method = "paracoord",control = list(type="list"))
plot(rulem1,method = "scatter",control = list(type="list"))
plot(rulem1,method = "matrix",control = list(type="list"))

rulem2 <- apriori(as.matrix(movies1),parameter = list(supp=0.001,conf=0.80,minlen=4))
inspect(rulem2)
plot(rulem1,method = "graph",control = list(type="list"))
plot(rulem1,method = "mosaic",control = list(type="list"))
plot(rulem1,method = "grouped",control = list(type="list"))
plot(rulem1[1:10],method = "paracoord",control = list(type="list"))
plot(rulem1,method = "scatter",control = list(type="list"))
plot(rulem1,method = "matrix",control = list(type="list"))

#SO there's a strong association which says people who have watched LOTR2 definetly watch LOTR1
#people who watch LOTR1,LOTR2 also watch harry potter


