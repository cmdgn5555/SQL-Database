--INNER JOIN ÝLE BÝRLEÞTÝRME


SELECT * FROM Kitap
SELECT * FROM Kitap2

SELECT Kitap.KitapAd, Kitap.KitapYayýnEvi, Kitap2.KitapYayýnEvi FROM Kitap INNER JOIN Kitap2 ON Kitap.KitapAd = Kitap2.KitapAd 


SELECT * FROM Kitap
SELECT * FROM Kitap2

SELECT SUM(Kitap.KitapFiyat) as TOPLAM_FÝYAT 
FROM Kitap inner join Kitap2 on Kitap.KitapAd = Kitap2.KitapAd


SELECT * FROM Kitap
SELECT * FROM Kitap2

SELECT SUM(Kitap2.KitapSayfa) AS TOPLAM_SAYFA 
FROM Kitap inner join Kitap2 on Kitap.KitapYazar = Kitap2.KitapYazar



SELECT * FROM Kitap4

SELECT * FROM Kitap5


SELECT SUM(Kitap4.KitapSayfa) AS SAYFA_TOPLAM, SUM(Kitap5.KitapFiyat) AS FÝYAT_TOPLAM
FROM Kitap4 inner join Kitap5 on Kitap4.KitapAd = Kitap5.KitapAd


SELECT * FROM Kitap4
SELECT * FROM Kitap5

SELECT SUM(Kitap4.KitapSayfa) AS SAYFA_TOPLAM, SUM(Kitap5.KitapFiyat) AS FÝYAT_TOPLAM
FROM Kitap4 inner join Kitap5 on Kitap4.KitapYazar = Kitap5.KitapYazar


SELECT * FROM Kitap4
SELECT * FROM Kitap5

SELECT Kitap5.KitapTarih, SUM(Kitap4.KitapSayfa) AS SAYFA_TOPLAM, SUM(Kitap5.KitapFiyat) AS FÝYAT_TOPLAM
FROM Kitap4 inner join Kitap5 on Kitap4.KitapAd = Kitap5.KitapAd
GROUP BY Kitap5.KitapTarih


SELECT * FROM Kategoriler
SELECT * FROM Ürünler

SELECT * FROM Kategoriler inner join Ürünler on Kategoriler.KategoriId = Ürünler.KategoriId
ORDER BY ÜrünAd


SELECT * FROM Kategoriler
SELECT * FROM Ürünler

SELECT * FROM Kategoriler inner join Ürünler on Kategoriler.KategoriId = Ürünler.KategoriId
ORDER BY ÜrünAd


SELECT * FROM Kitap
SELECT * FROM Kitap2

SELECT Kitap2.KitapAd, Kitap.KitapRengi, Kitap2.KitapRengi 
FROM Kitap inner join Kitap2 on Kitap.KitapAd = Kitap2.KitapAd