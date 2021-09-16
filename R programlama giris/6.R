library(corrplot)
str(iris)
data("iris")
n.data<-iris[,c(1:4)]
str(n.data)
KOR<-cor(n.data)
corrplot(KOR)  # korelasyon grafiði
corrplot(KOR,method = "circle",type = "lower") # daire yapýp sadece alttarafý göster,çünkü grafik simetrik
corrplot(KOR,method = "pie",type = "lower")    #pasta grafiði alt tarafý
corrplot(KOR,method = "number",type = "lower") #sayýlarla gösterim,lower yerine upper dersek üst tarafý gösterir
corrplot.mixed(KOR,lower="number",
               upper = "circle",tl.pos = "lt")
