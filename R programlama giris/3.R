#kütüphaneleri aktifleþtirene kadarki kodlar alýþtýrma içindir
data("iris")
data3<-iris[c(1:4),c(3,4)]   # iris verisinde ilk 4 satýr ve 3.,4. sütunlarýn eþ kümesi
data3

v=mtcars[mtcars$mpg>30,]   # mtcars veri setinde mpg si 30 dan büyük olanlar

newdata<-mtcars[which(mtcars$cyl==4 & mtcars$mpg>30)]

library(mice)  # eksik verileri tamamlayan paket,regresyon tabanlý
library(VIM)   # eksik veriyi grafikleþtirmeye yarayan paket
library(missForest)  # prodna fonksiyonunu kullanmaya yarar
data("iris")   
View(iris)
dim(iris)
M.data<-prodNA(iris,noNA = 0.2)    # iris e eksik deðer ekleyeceðiz, yüzde 20 si kadar
summary(M.data)  # eksik deðerleri görmek için
M.data<-subset(M.data,select = -c(Species))   # subset ile alt gtup oluþturuyoruz, -c(species) kategorik deðerlerin yer almayacaðýný söyler
md.pattern(M.data)   # görüntelemek için örüntü oluþturur,
mice.plot<-aggr(M.data,color=c('blue', # aggr vim den geliyor
                               'green'),numbers=TRUE,sortVars=TRUE,
                labels=names(M.data),
                cex.axis=.7,gap=3,
                ylab=c("eksik veri","örüntü"))
PD.data<-mice(M.data,m=5,maxit=50,metod='pmm',seed=500)  # 5 iterasyon uygulanýr,pmm metoduyla
summary(PD.data)   #özet
T2.iris<-complete(PD.data,2)   #2. iterasyýndaki deðerleri ata
View(T2.iris)
#boxplot grafiði çizdirmek, normal daðýlým olup olmadýðýný gösterir
boxplot(T2.iris)
