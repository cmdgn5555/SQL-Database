
--HAVING KULLANIMI


SELECT * FROM Kitap2

SELECT KitapYayýnEvi, 

COUNT(KitapAd) AS KÝTAP_SAYISI, 

SUM(KitapFiyat) AS ALACAK,

SUM(Vergi) AS VERECEK,

(SUM(KitapFiyat) - SUM(Vergi)) AS NET_BAKÝYE

FROM Kitap2 GROUP BY KitapYayýnEvi

HAVING (SUM(KitapFiyat) - (SUM(Vergi))) <= 1250


SELECT * FROM Kitap2

SELECT KitapYayýnEvi, 

SUM(KitapSayfa) AS SAYFA_TOPLAM, 

SUM(KitapFiyat) AS FÝYAT_TOPLAM 

FROM Kitap2 GROUP BY KitapYayýnEvi 

HAVING SUM(KitapFiyat) > 1280


SELECT * FROM Kitap2

SELECT KitapYayýnEvi, 

SUM(KitapSayfa) AS SAYFA_TOPLAM, 

SUM(KitapFiyat) AS FÝYAT_TOPLAM 

FROM Kitap2 GROUP BY KitapYayýnEvi 

HAVING SUM(KitapSayfa) < 1000