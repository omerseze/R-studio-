# satis veri setini cagiralim

satis <- read.table(file.choose(),header=T,sep=",")

# ingilizce basliklari turkceye cevirelim 
colnames(satis) <- c("satiskanali","bolge","tazeurun_yillikharcama","suturunleri_yillikharcama","sebzeurunleri_yillikharcama","donmusurunlerde_yillikharcama","temizlikmalzemelerinde_yillikharcama","sarkuteriurunleri_yillikharcama")

# satiskanali ve bolge kumeleme icin kullanilmayacak cikaralim

satis <- satis[-1:-2]
summary(satis)

# normalize ederek devam edelim
# hepsini birden yapalim
library(clusterSim)
normalize_satis <- data.Normalization(x=satis, type="n4",normalization = "column")

# kortalamalar icin kmeans kullanacagiz
# amac kume ici uzakligi minimum
# kumeler arasi uzakligin ise maksimum olmasini saglamaktir
# 2 kume icin

model2 <- kmeans(x=normalize_satis,2)
table(model2$cluster)

model2$totss# kare toplamlarinin toplami
model2$tot.withinss # toplam kume ici kare toplamlari
model2$withinss # kume ici kare toplamlari
model2$betweenss # kumeler arasi kare toplamlari



# 3 kume icin

model3 <- kmeans(x=normalize_satis,3)
table(model3$cluster)
model3$totss
model3$tot.withinss
model3$withinss
model3$betweenss

# k= 2 degeri icin silhouette hesaplamasi
k <- 2
silhouette_degeri <- 0
set.seed(1)
satis_modeli <- kmeans(normalize_satis,centers=k)
# cluster paketi icindeki silhouette fonks. ile hesaplamayi gerceklestirelim
satis_silhouette <- silhouette(satis_modeli$cluster, dist(normalize_satis, method="euclidean"))
satis_silhouette # ornegin ait oldugu kume, ornegin komsu kumesi, silhouette genisligi

silhouette_degeri <- mean(satis_silhouette[,c("sil_width")])
silhouette_degeri # k= 2 icin ortalama silhouette genisligi

# digerleri icinde hesaplamak icin dongu kullanalim
k <- 20
silhouette_degeri <- 0
for(i in 2:k) {
  set.seed(1)
  satis_modeli <- kmeans(normalize_satis, centers=i)
  satis_silhouette <- silhouette(satis_modeli$cluster, dist(normalize_satis, method="euclidean"))
  silhouette_degeri[i] <- mean(satis_silhouette[,c("sil_width")])
}

silhouette_degeri

# grafikte tum degerleri gorelim

plot(2:k, silhouette_degeri[2:k],col="Chartreuse",pch=20, cex=1, lty="solid",
     xlab="kume_sayisi(k)",ylab="silhouette",
     xlim=range(2,20),ylim=range(0,0.6))

text(2:k, silhouette_degeri[2:k],
     labels=round(silhouette_degeri[2:k],2)
     ,pos=3)
lines(2:k,silhouette_degeri[2:k])

axis(1,at=1:20, labels=c(1:20))
grid(NULL,NULL,lty=6, col="grey",lwd=2)



