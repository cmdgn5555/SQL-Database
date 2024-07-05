
--HAVING KULLANIMI


SELECT * FROM Kitap2

SELECT KitapYay�nEvi, 

COUNT(KitapAd) AS K�TAP_SAYISI, 

SUM(KitapFiyat) AS ALACAK,

SUM(Vergi) AS VERECEK,

(SUM(KitapFiyat) - SUM(Vergi)) AS NET_BAK�YE

FROM Kitap2 GROUP BY KitapYay�nEvi

HAVING (SUM(KitapFiyat) - (SUM(Vergi))) <= 1250


SELECT * FROM Kitap2

SELECT KitapYay�nEvi, 

SUM(KitapSayfa) AS SAYFA_TOPLAM, 

SUM(KitapFiyat) AS F�YAT_TOPLAM 

FROM Kitap2 GROUP BY KitapYay�nEvi 

HAVING SUM(KitapFiyat) > 1280


SELECT * FROM Kitap2

SELECT KitapYay�nEvi, 

SUM(KitapSayfa) AS SAYFA_TOPLAM, 

SUM(KitapFiyat) AS F�YAT_TOPLAM 

FROM Kitap2 GROUP BY KitapYay�nEvi 

HAVING SUM(KitapSayfa) < 1000