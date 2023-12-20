# K- Ortalamalar- K-Means
#Hiyerarsik olmayan kumeleme durum tespiti yapar
#bu yontemde belli sayidaki kume icin toplam ortalama hatayi minimize etmek amaclanir
#paket yuklenmeden kmeans kullanilabilir
## dikkat bu yontem tanimlayici veri madenciligi tekniklerindendir
# dogruluk hata gibi oranlar bulunmaz, hedef nitelik yoktur
# bunlar yerine kume ici ve kumler arasi uzakliklara bakilabilir
# silhouette hesaplamasi

data(iris)
set.seed(1234)
ind <- sample(1:150,30)
veri <- iris[ind,]
veri <- veri[,-5]

#veri hazirlandi simdi kmeans uygualayacagiz 3 farkli kume 
model <- kmeans(veri[,-5],3)

#modelin gorselini cizmek icin fpc paketi yukleyelim
install.packages("fpc")
library(fpc)
plotcluster(veri,model$cluster)

#bir baska grafik
library(cluster)
clusplot(veri, model$cluster, color=T, shade=T, labels=2)