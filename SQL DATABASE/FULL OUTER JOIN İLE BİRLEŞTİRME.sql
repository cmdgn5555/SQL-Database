--FULL OUTER JOIN �LE B�RLE�T�RME


SELECT * FROM Kitap
SELECT * FROM Kitap2

SELECT Kitap.KitapAd, Kitap2.KitapAd 
FROM Kitap full outer join Kitap2 on Kitap.KitapAd = Kitap2.KitapAd


SELECT * FROM Kitap
SELECT * FROM Kitap2

SELECT Kitap.KitapYazar, Kitap2.KitapYazar 
FROM Kitap full outer join Kitap2 on Kitap.KitapYazar = Kitap2.KitapYazar


SELECT * FROM Kitap
SELECT * FROM Kitap2

SELECT Kitap.KitapYazar, Kitap2.KitapYazar, Kitap.KitapYay�nEvi, Kitap2.KitapYay�nEvi 
FROM Kitap full outer join Kitap2 on Kitap.KitapYazar = Kitap2.KitapYazar