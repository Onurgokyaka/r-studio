data("volcano")
View(volcano)
data("mtcars")   # mtcars datasýný çaðýr
View(mtcars)     # mtcars datasýný gör
dim(mtcars)      # mtcarsýn boyutu  
str(mtcars)      # mtcarsýn veri türlerini verir
print(mtcars$mpg)    # mpg yi yaz
summary(mtcars)      # min-max deðer, medyan vs
mtcars$am<-as.factor(mtcars$am)  # am automatic or manuel olmasýný gösterir, yani numeric deðil faktör olarak kullanýlmalý
str(mtcars)
summary(mtcars) 
is.na(mtcars)   # veri setinde eksik deðer var mý
head(mtcars)    # veri setindeki ilk birkaç deðeri sýraladý, yani birkaç alternatifi
tail(mtcars)    # veri setindeki son birkaç deðeri gösterir
head(mtcars,2)  # baþtan 2 taneyi gösterir
tail(mtcars,3)  # sondan 3 taneyi gösterir
