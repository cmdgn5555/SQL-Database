--AS KULLANIMI


SELECT * FROM Kitap

SELECT KitapFiyat AS 'BookPrice' FROM Kitap

SELECT KitapAd AS 'BookName' FROM Kitap

SELECT KitapYazar AS 'BookAuthor' FROM Kitap

SELECT KitapSayfa AS 'BookPage' FROM Kitap

SELECT KitapNo AS 'BookNumber', KitapTarih AS 'BookDate', KitapYayýnEvi AS 'BookPublishingHouse' FROM Kitap

SELECT KitapNo AS 'KÝTAPNOSU', KitapAd AS 'KÝTAPADI', KitapYazar AS 'KÝTAPYAZARI' FROM Kitap

SELECT KitapAd, KitapYazar, KitapFiyat, KitapFiyat + 3 AS 'Yeni Fiyat' FROM Kitap

SELECT KitapAd, KitapYazar, KitapSayfa, KitapSayfa * 2 AS 'Yeni Sayfa Sayýsý' FROM Kitap

SELECT KitapAd, KitapYazar, KitapNo, KitapNo - 10 AS 'Yeni Kitap No' FROM Kitap

SELECT KitapAd, KitapYazar, KitapYayýnEvi, KitapYayýnEvi + 'abc' AS 'Yeni Yayýn Evi' FROM Kitap

SELECT KitapAd, KitapYazar, KitapYayýnEvi, KitapAd + 'xyz' AS 'Yeni Kitap Adý' FROM Kitap