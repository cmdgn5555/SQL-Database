--WHERE ILE BIRLESTIRME


SELECT * FROM Kitap
SELECT * FROM Kitap2

SELECT Kitap2.KitapNo FROM Kitap, Kitap2 WHERE Kitap.KitapAd = Kitap2.KitapAd


SELECT * FROM Kitap
SELECT * FROM Kitap2

SELECT Kitap2.KitapYazar, Kitap.KitapYazar FROM Kitap, Kitap2 WHERE Kitap.KitapYayýnEvi = Kitap2.KitapYayýnEvi

SELECT * FROM Kitap
SELECT * FROM Kitap2
SELECT * FROM Kitap3

SELECT Kitap.KitapNo, Kitap2.KitapNo, Kitap3.KitapNo FROM Kitap, Kitap2, Kitap3 
WHERE Kitap.KitapRengi = Kitap2.KitapRengi AND Kitap2.KitapRengi = Kitap3.KitapRengi

SELECT * FROM Kitap2
SELECT * FROM Kitap3

SELECT Kitap2.KitapRengi, Kitap3.KitapRengi FROM Kitap2, Kitap3 WHERE Kitap2.KitapNo = Kitap3.KitapNo


SELECT * FROM Kitap
SELECT * FROM Kitap3

SELECT Kitap.KitapNo, Kitap3.KitapNo FROM Kitap, Kitap3 WHERE Kitap.KitapRengi = Kitap3.KitapRengi
