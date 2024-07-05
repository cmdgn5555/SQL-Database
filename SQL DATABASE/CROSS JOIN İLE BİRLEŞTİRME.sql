--CROSS JOIN ÝLE BÝRLEÞTÝRME


SELECT * FROM Kitap
SELECT * FROM Kitap2
SELECT * FROM Kitap3

SELECT Kitap.KitapAd, Kitap2.KitapRengi, Kitap3.KitapBaský FROM Kitap cross join Kitap2 cross join Kitap3