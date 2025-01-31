#k�t�phaneleri aktifle�tirene kadarki kodlar al��t�rma i�indir
data("iris")
data3<-iris[c(1:4),c(3,4)]   # iris verisinde ilk 4 sat�r ve 3.,4. s�tunlar�n e� k�mesi
data3

v=mtcars[mtcars$mpg>30,]   # mtcars veri setinde mpg si 30 dan b�y�k olanlar

newdata<-mtcars[which(mtcars$cyl==4 & mtcars$mpg>30)]

library(mice)  # eksik verileri tamamlayan paket,regresyon tabanl�
library(VIM)   # eksik veriyi grafikle�tirmeye yarayan paket
library(missForest)  # prodna fonksiyonunu kullanmaya yarar
data("iris")   
View(iris)
dim(iris)
M.data<-prodNA(iris,noNA = 0.2)    # iris e eksik de�er ekleyece�iz, y�zde 20 si kadar
summary(M.data)  # eksik de�erleri g�rmek i�in
M.data<-subset(M.data,select = -c(Species))   # subset ile alt gtup olu�turuyoruz, -c(species) kategorik de�erlerin yer almayaca��n� s�yler
md.pattern(M.data)   # g�r�ntelemek i�in �r�nt� olu�turur,
mice.plot<-aggr(M.data,color=c('blue', # aggr vim den geliyor
                               'green'),numbers=TRUE,sortVars=TRUE,
                labels=names(M.data),
                cex.axis=.7,gap=3,
                ylab=c("eksik veri","�r�nt�"))
PD.data<-mice(M.data,m=5,maxit=50,metod='pmm',seed=500)  # 5 iterasyon uygulan�r,pmm metoduyla
summary(PD.data)   #�zet
T2.iris<-complete(PD.data,2)   #2. iterasy�ndaki de�erleri ata
View(T2.iris)
#boxplot grafi�i �izdirmek, normal da��l�m olup olmad���n� g�sterir
boxplot(T2.iris)
