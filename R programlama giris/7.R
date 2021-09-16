#Principal Conponent Analysis
#büyük bir veri setinde en popüler deðiþkenler hangileridir,daha az deðiþkenle daha fazla anlama sahip görselleþtirmenin yapýlmasý
# 3 ve daha fazla boyutlu veri setlerinde uygulanmasý daha iyi olacaktýr
## varyansý en çok olan, en çok katký yapanlarý toplayýp kullanýyoruz

library(devtools)
install_github("vqv/ggbiplot")  # githubdan ggbiplotu çekiyoruz
library(ggbiplot)
PCA.data<-prcomp(mtcars[,c(1:7,10,11)], center = TRUE,scale. = TRUE)
summary(PCA.data)
ggbiplot(PCA.data)# pozitif tarafta olup birim çembere yani kenara en yakýnlar farklýlýk saðlar, yani analizi bunlar üzerinden yapmak en mantýklýsý
ggbiplot(PCA.data,labels = rownames(mtcars)) 
# görüntüde ford pantera, maserati,ferrari dino, 3 lüsü dýþarda kalýr, yani özellik açýsýndan hepsinden ayrýlardýr. Zaten en spor arabalar bunlar
#https://www.datacamp.com/community/tutorials/pca-analysis-r
# ayný örnek yukarýda yorumlanýyor,detaylý bir þekilde
mtcars.country <- c(rep("Japan", 3), rep("US",4), rep("Europe", 7),rep("US",3), "Europe", rep("Japan", 3), rep("US",4), rep("Europe", 3), "US", rep("Europe", 3))

ggbiplot(PCA.data,ellipse=TRUE,  labels=rownames(mtcars), groups=mtcars.country)
#pca elipslerini oluþturup ülkelere göre araçlarýn kümelerini görmeye çalýþacaðýz
ggbiplot(PCA.data,ellipse=TRUE,choices=c(3,4), 
         labels=rownames(mtcars), groups=mtcars.country)
#yukarýdaki koddan çýkan grafikte çok birþey gözükmüyor çünkü pc3 ve pc4 varyasyonun çok az yüzdelerini açýklar, bu nedenle bunlar pek bilgilendirici deðildir
### pca ile veri kümesinde bileþenleri varyans hesabý üzerinden tasarlýyoruz
