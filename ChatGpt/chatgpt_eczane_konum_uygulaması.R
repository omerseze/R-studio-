# HEDEF: HERHANGİ bir işletme türü için enlem/boylamın nasıl alınacağını ve haritalanacağını gösterin

# bunun için şu şekilde olan metni ilgili araştırma yapacağınız bölgenize göre değişitrebilirisniz
# Türkiyede bulunan bilecik ili  eczane araması sorgulama örneğini chatgptye şu şekilde sorabilirsiniz.

# * CHATGPT ISTEMI ----
"osmdata R kütüphanesini kullanarak, Türkiye'deki tüm eczanelerin konumlarını bulmak için R kodu yazın
bilecik. Ardından eczaneleri bir harita üzerinde görselleştirmek için mapview'i kullanın."


# yukarıdaki chatgpte sorgulamasına sorduğunuzda çıkan ilgili görseli aşşağıdaki yolları izleyerek yaparsanız sonuca ulaşırsınz



#ilgili kütüphanleri yükle 
install.packages(c("osmdata", "mapview", "sf"))
library(osmdata)
library(mapview)
library(sf)

# Bilecik için sınırlayıcı kutuyu tanımlayın
bbox <- c(left = 29.5, bottom = 40.0, right = 30.5, top = 40.5)

# Bilecik'teki eczaneler için OpenStreetMap verilerini sorgula
osm_pharmacies <- opq(bbox = bbox) %>%
  add_osm_feature(key = "amenity", value = "pharmacy") %>%
  osmdata_sf()

# Eczaneleri basit bir özellik (sf) nesnesi olarak ayıklayın
pharmacies_sf <- osm_pharmacies$osm_points

# Mapview kullanarak eczaneleri bir harita üzerinde görselleştirin
mapview::mapview(pharmacies_sf)

# Pittsburgh için sınırlayıcı kutuyu alın
pittsburgh_bbox <- getbb("Bilecik, Turkey")

# Pittsburgh'daki eczaneler için bir Üstgeçit sorgusu oluşturun
query <- opq(bbox = pittsburgh_bbox) %>%
  add_osm_feature(key = "amenity", value = "pharmacy")

# Verileri bir sf nesnesi olarak ayıklayın
pharmacies_sf <- osmdata_sf(query)

# Eczaneleri bir harita üzerinde görselleştirin
mapview(pharmacies_sf$osm_points, zcol = "name")
