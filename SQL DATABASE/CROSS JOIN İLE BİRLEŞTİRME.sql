--CROSS JOIN �LE B�RLE�T�RME


SELECT * FROM Kitap
SELECT * FROM Kitap2
SELECT * FROM Kitap3

SELECT Kitap.KitapAd, Kitap2.KitapRengi, Kitap3.KitapBask� FROM Kitap cross join Kitap2 cross join Kitap3