# K�meleme algoritmalar�
#K-Means
library(ggplot2)
ggplot(iris,aes(Petal.Length,Petal.Width,color=Species))+geom_point()
#yukar�daki grafikte 3 k�me oldu�u ve bunlar�n etraf�nda yo�unla��ld��� a�ikar
set.seed(20) # random i�in
irisCluster<-kmeans(iris[,3:4],3,nstart=20)
irisCluster
table(irisCluster$cluster,iris$Species)  #kabaca k�melerin da��l�m�n� ald�k
irisCluster$cluster<-as.factor(irisCluster$cluster)
ggplot(iris,aes(Petal.Length,Petal.Width,color=iris$Species))+geom_point() # renklendirirken k�meleri baz ald��� i�in �st sat�rda fakt�re �evirdik

