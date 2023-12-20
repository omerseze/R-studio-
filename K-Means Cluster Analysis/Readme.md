#K-means kümeleme


K-ortalama kümeleme ya da K-means kümeleme (K-means clustering) yöntemi N adet veri nesnesinden oluşan bir veri kümesini giriş parametresi olarak verilen K adet kümeye bölümlemektir. Amaç, gerçekleştirilen bölümleme işlemi sonunda elde edilen kümelerin, küme içi benzerliklerinin maksimum ve kümeler arası benzerliklerinin ise minimum olmasını sağlamaktır.

K-means en sık kullanılan kümeleme algoritmalarındandır. Uygulanması kolaydır. Büyük ölçekli verileri hızlı ve etkin şekilde kümeleyebilir. “K” algoritmaya başlamadan önce ihtiyaç duyulan sabit küme sayısını ifade etmektedir. Tekrarlı bölümleyici yapısı ile K-means algoritması, her verinin ait olduğu kümeye olan uzaklıkları toplamını küçültmektedir. K-means algoritması karesel hatayı en küçük yapacak olan K adet kümeyi tespit etmeye çalışmaktadır.

K-means ile küme içi benzerlik büyük, kümeler arası benzerlik ise küçük olduğu sürece kümelenmenin doğruluğundan söz edilebilir. Problem NP-hard olmasına rağmen K-means algoritması bir iteratif (tekrarlayıcı) yaklaşım ile genelde iyi bir çözüm verir.


#K-means algoritması nasıl çalışır?

K-means algoritmasının çalışma mekanizmasına göre öncelikle her kümenin merkez noktasını veya ortalamasını temsil etmek üzere K adet nesne rastgele seçilir. Kalan diğer nesneler, kümelerin ortalama değerlerine olan uzaklıkları dikkate alınarak en benzer oldukları kümelere dahil edilir. Daha sonra, her bir kümenin ortalama değeri hesaplanarak yeni küme merkezleri belirlenir ve tekrar nesnelerin merkeze uzaklıkları incelenir. Herhangi bir değişim olmayıncaya kadar algoritma tekrarlamaya devam eder.

Algoritma temel olarak 4 aşamadan oluşur:

1.Küme merkezlerinin belirlenmesi
2.Merkez dışındaki verilerin mesafelerine göre kümelendirilmesi
3.Yapılan kümelendirmeye göre yeni merkezlerin belirlenmesi (veya eski merkezlerin yeni merkeze kaydırılması)
4.Kararlı hale (stable state) gelinene kadar 2. ve 3. adımların tekrarlanması.


#K-Means’ı Nerede Uygulayabilirim?
Öncelikle bu algoritmayı nerelerde, hangi amaçlarda kullanabiliriz bunlara göz atalım. Bana göre bir algoritmayı incelemeye başlamadan önce onun neye hizmet ettiğini bilmek bizim çalışma verimimizi arttırır.

→Belge Sınıflandırması
Belgeleri etiketlere, konulara ve belgenin içeriğine göre birden fazla kategoride kümeleyin. Bu çok standart bir sınıflandırma problemidir ve k-means aracı bu amaç için oldukça uygun bir algoritmadır.

→Suç Yerlerinin Belirlenmesi
Bir şehirdeki belirli bölgelerde mevcut olan suçlarla ilgili veriler, suç kategorisi, suç alanı ve ikisi arasındaki ilişki, bir şehirdeki ya da bölgedeki suça eğilimli alanlara ilişkin kaliteli bilgiler verebilir. 

→Müşteri Segmentasyonu
Kümeleme, pazarlamacıların müşteri tabanını geliştirmelerine, hedef alanlarda çalışmasına ve müşterileri satın alma geçmişine, ilgi alanlarına veya etkinlik izlemeye göre segmentlere ayırmasına yardımcı olur. Sınıflandırma, şirketin belirli kampanyalar için belirli müşteri kümelerini hedeflemesine yardımcı olur.

→Oyuncu Analizi
Oyuncu istatistiklerini analiz etmek, spor dünyasının her zaman kritik bir unsuru olmuştur ve artan rekabetle birlikte, makine öğrenmenin burada oynayacağı kritik bir rol vardır. 

→Dolandırıcılık Tespiti
Makine öğrenimi sahtekarlık tespitinde önemli bir rol oynar ve otomobil, sağlık ve sigorta sahtekarlığı tespitinde sayısız uygulamaya sahiptir. Sahte iddialarla ilgili geçmiş verileri kullanarak, yeni iddiaları , sahte kalıpları belirten kümelere yakınlığına dayanarak izole etmek mümkündür.

→Çağrı Kaydı Detay Analizi
Bir çağrı detay kaydı (CDR), telekom şirketleri tarafından bir müşterinin araması, SMS ve internet etkinliği sırasında elde edilen bilgilerdir. Bu bilgiler, müşteri demografisiyle birlikte kullanıldığında, müşterinin ihtiyaçları hakkında daha fazla bilgi sağlar. Bu makalede, denetlenmeyen k-means kümeleme algoritmasını kullanarak müşteri faaliyetlerini 24 saat boyunca nasıl kümelendirebileceğinizi anlayacaksınız. Müşteri segmentlerini saatlerce kullanımlarına göre anlamak için kullanılır.

→BT Uyarılarının Otomatik Kümelenmesi
Ağ, depolama veya veritabanı gibi büyük kurumsal BT altyapı teknolojisi bileşenleri büyük hacimli uyarı mesajları üretir. Uyarı mesajları potansiyel olarak operasyonel sorunlara işaret ettiğinden, sonraki işlemler için önceliklendirme için manuel olarak taranmaları gerekir. Verilerin kümelenmesi, uyarı kategorileri hakkında bilgi verebilir ve ortalama onarım süresi ve arıza tahminlerinde yardımcı olabilir.

→Burada yazmayan daha birçok ugulamadada (Görüntü Tanıma gibi) K-Means algoritması kullanılabilir.