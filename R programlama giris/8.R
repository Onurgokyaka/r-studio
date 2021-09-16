# Kümeleme algoritmalarý
#K-Means
library(ggplot2)
ggplot(iris,aes(Petal.Length,Petal.Width,color=Species))+geom_point()
#yukarýdaki grafikte 3 küme olduðu ve bunlarýn etrafýnda yoðunlaþýldýðý aþikar
set.seed(20) # random için
irisCluster<-kmeans(iris[,3:4],3,nstart=20)
irisCluster
table(irisCluster$cluster,iris$Species)  #kabaca kümelerin daðýlýmýný aldýk
irisCluster$cluster<-as.factor(irisCluster$cluster)
ggplot(iris,aes(Petal.Length,Petal.Width,color=iris$Species))+geom_point() # renklendirirken kümeleri baz aldýðý için üst satýrda faktöre çevirdik

