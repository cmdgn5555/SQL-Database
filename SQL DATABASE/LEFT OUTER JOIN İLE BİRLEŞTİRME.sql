--LEFT OUTER JOIN ÝLE BÝRLEÞTÝRME


SELECT * FROM Kitap
SELECT * FROM Kitap2

SELECT Kitap.KitapAd, Kitap.KitapRengi, Kitap2.KitapRengi 
FROM Kitap left outer join Kitap2 on Kitap.KitapAd = Kitap2.KitapAd


SELECT * FROM Kitap
SELECT * FROM Kitap2

SELECT Kitap2.KitapAd, Kitap.KitapRengi, Kitap2.KitapRengi 
FROM Kitap2 left outer join Kitap on Kitap.KitapAd = Kitap2.KitapAd


SELECT * FROM Kitap
SELECT * FROM Kitap2

SELECT Kitap.KitapYazar, Kitap.KitapRengi, Kitap2.KitapRengi 
FROM Kitap left outer join Kitap2 on Kitap.KitapYazar = Kitap2.KitapYazar