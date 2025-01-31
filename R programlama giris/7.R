#Principal Conponent Analysis
#b�y�k bir veri setinde en pop�ler de�i�kenler hangileridir,daha az de�i�kenle daha fazla anlama sahip g�rselle�tirmenin yap�lmas�
# 3 ve daha fazla boyutlu veri setlerinde uygulanmas� daha iyi olacakt�r
## varyans� en �ok olan, en �ok katk� yapanlar� toplay�p kullan�yoruz

library(devtools)
install_github("vqv/ggbiplot")  # githubdan ggbiplotu �ekiyoruz
library(ggbiplot)
PCA.data<-prcomp(mtcars[,c(1:7,10,11)], center = TRUE,scale. = TRUE)
summary(PCA.data)
ggbiplot(PCA.data)# pozitif tarafta olup birim �embere yani kenara en yak�nlar farkl�l�k sa�lar, yani analizi bunlar �zerinden yapmak en mant�kl�s�
ggbiplot(PCA.data,labels = rownames(mtcars)) 
# g�r�nt�de ford pantera, maserati,ferrari dino, 3 l�s� d��arda kal�r, yani �zellik a��s�ndan hepsinden ayr�lard�r. Zaten en spor arabalar bunlar
#https://www.datacamp.com/community/tutorials/pca-analysis-r
# ayn� �rnek yukar�da yorumlan�yor,detayl� bir �ekilde
mtcars.country <- c(rep("Japan", 3), rep("US",4), rep("Europe", 7),rep("US",3), "Europe", rep("Japan", 3), rep("US",4), rep("Europe", 3), "US", rep("Europe", 3))

ggbiplot(PCA.data,ellipse=TRUE,  labels=rownames(mtcars), groups=mtcars.country)
#pca elipslerini olu�turup �lkelere g�re ara�lar�n k�melerini g�rmeye �al��aca��z
ggbiplot(PCA.data,ellipse=TRUE,choices=c(3,4), 
         labels=rownames(mtcars), groups=mtcars.country)
#yukar�daki koddan ��kan grafikte �ok bir�ey g�z�km�yor ��nk� pc3 ve pc4 varyasyonun �ok az y�zdelerini a��klar, bu nedenle bunlar pek bilgilendirici de�ildir
### pca ile veri k�mesinde bile�enleri varyans hesab� �zerinden tasarl�yoruz
