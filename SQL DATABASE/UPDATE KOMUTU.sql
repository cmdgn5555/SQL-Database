--UPDATE KOMUTU


UPDATE Kitap 
SET KitapSayfa = 965, KitapFiyat = 370, KitapTarih = '2016-12-03', KitapYay�nEvi = 'Ven�s' 
WHERE KitapNo = 24


UPDATE Kitap
SET KitapNo = 25, KitapAd = 'Serenad', KitapYazar = 'Z�lf� Livaneli'
WHERE KitapTarih = '2016-11-20 00:00:00'


UPDATE Kitap
SET KitapSayfa = 900
WHERE KitapSayfa > 800


UPDATE Kitap
SET KitapFiyat = 100
WHERE KitapFiyat < 100


UPDATE Kitap
SET KitapTarih = '2016-02-23'
WHERE KitapYay�nEvi = 'MaviBulut'


UPDATE Kitap2 
SET KitapYazar='Z�lf� Livaneli', KitapSayfa=380, KitapTarih='2016-11-03', KitapYay�nEvi='uydu' 
WHERE KitapNo=14


UPDATE Kitap2 
SET KitapNo=15, KitapAd='�ocuk Kalbi', KitapSayfa=435, KitapFiyat=320
WHERE KitapYazar='Edmondo De Amicis'