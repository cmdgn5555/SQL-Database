--INNER JOIN �LE B�RLE�T�RME


SELECT * FROM Kitap
SELECT * FROM Kitap2

SELECT Kitap.KitapAd, Kitap.KitapYay�nEvi, Kitap2.KitapYay�nEvi FROM Kitap INNER JOIN Kitap2 ON Kitap.KitapAd = Kitap2.KitapAd 


SELECT * FROM Kitap
SELECT * FROM Kitap2

SELECT SUM(Kitap.KitapFiyat) as TOPLAM_F�YAT 
FROM Kitap inner join Kitap2 on Kitap.KitapAd = Kitap2.KitapAd


SELECT * FROM Kitap
SELECT * FROM Kitap2

SELECT SUM(Kitap2.KitapSayfa) AS TOPLAM_SAYFA 
FROM Kitap inner join Kitap2 on Kitap.KitapYazar = Kitap2.KitapYazar



SELECT * FROM Kitap4

SELECT * FROM Kitap5


SELECT SUM(Kitap4.KitapSayfa) AS SAYFA_TOPLAM, SUM(Kitap5.KitapFiyat) AS F�YAT_TOPLAM
FROM Kitap4 inner join Kitap5 on Kitap4.KitapAd = Kitap5.KitapAd


SELECT * FROM Kitap4
SELECT * FROM Kitap5

SELECT SUM(Kitap4.KitapSayfa) AS SAYFA_TOPLAM, SUM(Kitap5.KitapFiyat) AS F�YAT_TOPLAM
FROM Kitap4 inner join Kitap5 on Kitap4.KitapYazar = Kitap5.KitapYazar


SELECT * FROM Kitap4
SELECT * FROM Kitap5

SELECT Kitap5.KitapTarih, SUM(Kitap4.KitapSayfa) AS SAYFA_TOPLAM, SUM(Kitap5.KitapFiyat) AS F�YAT_TOPLAM
FROM Kitap4 inner join Kitap5 on Kitap4.KitapAd = Kitap5.KitapAd
GROUP BY Kitap5.KitapTarih


SELECT * FROM Kategoriler
SELECT * FROM �r�nler

SELECT * FROM Kategoriler inner join �r�nler on Kategoriler.KategoriId = �r�nler.KategoriId
ORDER BY �r�nAd


SELECT * FROM Kategoriler
SELECT * FROM �r�nler

SELECT * FROM Kategoriler inner join �r�nler on Kategoriler.KategoriId = �r�nler.KategoriId
ORDER BY �r�nAd


SELECT * FROM Kitap
SELECT * FROM Kitap2

SELECT Kitap2.KitapAd, Kitap.KitapRengi, Kitap2.KitapRengi 
FROM Kitap inner join Kitap2 on Kitap.KitapAd = Kitap2.KitapAd