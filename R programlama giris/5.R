#eksik veriyi tamamlama iris- missforest
library(missForest)
M.data<-prodNA(iris,noNA = 0.3)  #yüzde 30 tahminleme
summary(M.data)  # M.data nýn özeti
Imp.data<-missForest(M.data)  # uygun deðer gelene kadar iterasyon uygular 
Imp.data$ximp  # tamamlanan iterasyonlarda bilginin nasýl daðýldýðýný gösterir
Imp.data$OOBerror  # hatanýn durumunu verir, pfc kategorik olanlarýn tahminlenmesindeki hata oraný,NPMSE: hata miktarý
H.data<-mixError(Imp.data$ximp,M.data,iris)  # verisetinin tamamýndaki hata, veri setinin orjinaliyle karþýlaþtýrma yapýlýr,veri setindeki yanlýlýk düzeltilerek hata azalýr yada nunparametrik veriyi parametriðe yakklaþtýrarakta hata azaltýlabilir
H.data
# her uygulama da hata miktarý deðiþir çünkü model tekrardan farklý bir tahminleme yapar

