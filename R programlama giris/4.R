#eksik veriyi tamamlama-uygulama iris-amelia
library(Amelia)# datayý küçük verilere bölüp kümeler
library(missForest)  # prodNA yý çalýþtýrmak için var
M.data<-prodNA(iris,noNA=0.1)  # yüzde 10 luk eksik veri(bilinmeyen deðer) oluþturduk
summary(M.data)  # m.data nýn özeti
amelia_fit<-amelia(M.data,n=5,
                   parallel="multicore", noms="Species")  #5 iterasyonlu m data modeli(fonksiyonu)
amelia_fit$imputations[[1]]  #1. iterasyon
amelia_fit$imputations[[2]]  #2. iterasyon
amelia_fit$imputations[[5]]$Sepal.Length
write.amelia(amelia_fit,file.stem = "tamamlanmýþ veriler") #dosya olarak 5 dosya yazdýrýyoruz
i1.data<-amelia_fit$imputations[[1]]  # 1. iterasyon sonucu oluþturulan veri
i2.data<-amelia_fit$imputations[[2]]
i3.data<-amelia_fit$imputations[[3]]
i4.data<-amelia_fit$imputations[[4]]
i5.data<-amelia_fit$imputations[[5]]
