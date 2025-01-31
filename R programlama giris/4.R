#eksik veriyi tamamlama-uygulama iris-amelia
library(Amelia)# datay� k���k verilere b�l�p k�meler
library(missForest)  # prodNA y� �al��t�rmak i�in var
M.data<-prodNA(iris,noNA=0.1)  # y�zde 10 luk eksik veri(bilinmeyen de�er) olu�turduk
summary(M.data)  # m.data n�n �zeti
amelia_fit<-amelia(M.data,n=5,
                   parallel="multicore", noms="Species")  #5 iterasyonlu m data modeli(fonksiyonu)
amelia_fit$imputations[[1]]  #1. iterasyon
amelia_fit$imputations[[2]]  #2. iterasyon
amelia_fit$imputations[[5]]$Sepal.Length
write.amelia(amelia_fit,file.stem = "tamamlanm�� veriler") #dosya olarak 5 dosya yazd�r�yoruz
i1.data<-amelia_fit$imputations[[1]]  # 1. iterasyon sonucu olu�turulan veri
i2.data<-amelia_fit$imputations[[2]]
i3.data<-amelia_fit$imputations[[3]]
i4.data<-amelia_fit$imputations[[4]]
i5.data<-amelia_fit$imputations[[5]]
