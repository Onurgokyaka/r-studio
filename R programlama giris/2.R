d3<-seq(from=1,to=5,by=0.5)   # 1 den 5 e kadar 0,5 art��la s�ral� olarak diz,bu bir dizidir
d3[3]       
length(d3)    #uzunluk

v1<-5:35
v1[-3]   # 3. eleman� siler
data("mtcars")
data1<-mtcars[,-9]  # mtcarstan 9. s�tunu sil

v1<-c(1,2,3,4)
v2<-c(2,4,6,8)
v3<-c(1,3,5,7)
v4<-c(10,20,30,40)
cbind(v1,v2,v3,v4)  # s�tun olarak birle�tir
rbind(v1,v2,v3,v4)  # sat�r olarak birle�tir
