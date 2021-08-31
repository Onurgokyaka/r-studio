d3<-seq(from=1,to=5,by=0.5)   # 1 den 5 e kadar 0,5 artýþla sýralý olarak diz,bu bir dizidir
d3[3]       
length(d3)    #uzunluk

v1<-5:35
v1[-3]   # 3. elemaný siler
data("mtcars")
data1<-mtcars[,-9]  # mtcarstan 9. sütunu sil

v1<-c(1,2,3,4)
v2<-c(2,4,6,8)
v3<-c(1,3,5,7)
v4<-c(10,20,30,40)
cbind(v1,v2,v3,v4)  # sütun olarak birleþtir
rbind(v1,v2,v3,v4)  # satýr olarak birleþtir
