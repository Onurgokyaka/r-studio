data("volcano")
View(volcano)
data("mtcars")   # mtcars datas�n� �a��r
View(mtcars)     # mtcars datas�n� g�r
dim(mtcars)      # mtcars�n boyutu  
str(mtcars)      # mtcars�n veri t�rlerini verir
print(mtcars$mpg)    # mpg yi yaz
summary(mtcars)      # min-max de�er, medyan vs
mtcars$am<-as.factor(mtcars$am)  # am automatic or manuel olmas�n� g�sterir, yani numeric de�il fakt�r olarak kullan�lmal�
str(mtcars)
summary(mtcars) 
is.na(mtcars)   # veri setinde eksik de�er var m�
head(mtcars)    # veri setindeki ilk birka� de�eri s�ralad�, yani birka� alternatifi
tail(mtcars)    # veri setindeki son birka� de�eri g�sterir
head(mtcars,2)  # ba�tan 2 taneyi g�sterir
tail(mtcars,3)  # sondan 3 taneyi g�sterir
