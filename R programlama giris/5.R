#eksik veriyi tamamlama iris- missforest
library(missForest)
M.data<-prodNA(iris,noNA = 0.3)  #y�zde 30 tahminleme
summary(M.data)  # M.data n�n �zeti
Imp.data<-missForest(M.data)  # uygun de�er gelene kadar iterasyon uygular 
Imp.data$ximp  # tamamlanan iterasyonlarda bilginin nas�l da��ld���n� g�sterir
Imp.data$OOBerror  # hatan�n durumunu verir, pfc kategorik olanlar�n tahminlenmesindeki hata oran�,NPMSE: hata miktar�
H.data<-mixError(Imp.data$ximp,M.data,iris)  # verisetinin tamam�ndaki hata, veri setinin orjinaliyle kar��la�t�rma yap�l�r,veri setindeki yanl�l�k d�zeltilerek hata azal�r yada nunparametrik veriyi parametri�e yakkla�t�rarakta hata azalt�labilir
H.data
# her uygulama da hata miktar� de�i�ir ��nk� model tekrardan farkl� bir tahminleme yapar

