library(corrplot)
str(iris)
data("iris")
n.data<-iris[,c(1:4)]
str(n.data)
KOR<-cor(n.data)
corrplot(KOR)  # korelasyon grafi�i
corrplot(KOR,method = "circle",type = "lower") # daire yap�p sadece alttaraf� g�ster,��nk� grafik simetrik
corrplot(KOR,method = "pie",type = "lower")    #pasta grafi�i alt taraf�
corrplot(KOR,method = "number",type = "lower") #say�larla g�sterim,lower yerine upper dersek �st taraf� g�sterir
corrplot.mixed(KOR,lower="number",
               upper = "circle",tl.pos = "lt")
