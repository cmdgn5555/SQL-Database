--AS KULLANIMI


SELECT * FROM Kitap

SELECT KitapFiyat AS 'BookPrice' FROM Kitap

SELECT KitapAd AS 'BookName' FROM Kitap

SELECT KitapYazar AS 'BookAuthor' FROM Kitap

SELECT KitapSayfa AS 'BookPage' FROM Kitap

SELECT KitapNo AS 'BookNumber', KitapTarih AS 'BookDate', KitapYay�nEvi AS 'BookPublishingHouse' FROM Kitap

SELECT KitapNo AS 'K�TAPNOSU', KitapAd AS 'K�TAPADI', KitapYazar AS 'K�TAPYAZARI' FROM Kitap

SELECT KitapAd, KitapYazar, KitapFiyat, KitapFiyat + 3 AS 'Yeni Fiyat' FROM Kitap

SELECT KitapAd, KitapYazar, KitapSayfa, KitapSayfa * 2 AS 'Yeni Sayfa Say�s�' FROM Kitap

SELECT KitapAd, KitapYazar, KitapNo, KitapNo - 10 AS 'Yeni Kitap No' FROM Kitap

SELECT KitapAd, KitapYazar, KitapYay�nEvi, KitapYay�nEvi + 'abc' AS 'Yeni Yay�n Evi' FROM Kitap

SELECT KitapAd, KitapYazar, KitapYay�nEvi, KitapAd + 'xyz' AS 'Yeni Kitap Ad�' FROM Kitap