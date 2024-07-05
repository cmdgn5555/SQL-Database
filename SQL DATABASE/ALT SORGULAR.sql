--ALT SORGULAR


SELECT * FROM Kitap

SELECT * FROM Kitap WHERE KitapRengi in (SELECT KitapRengi FROM Kitap WHERE KitapYayýnEvi = 'Venüs')

SELECT * FROM Kitap

SELECT * FROM Kitap WHERE KitapFiyat in (SELECT KitapFiyat FROM Kitap WHERE KitapYazar = 'Zülfü Livaneli')

SELECT * FROM Kitap

SELECT * FROM Kitap WHERE KitapSayfa in (SELECT KitapSayfa FROM Kitap WHERE KitapAd like '%z%')

SELECT * FROM Kitap

SELECT * FROM Kitap WHERE KitapFiyat in (SELECT KitapFiyat FROM Kitap WHERE KitapYazar like '%v%')

SELECT * FROM Kitap
SELECT * FROM Kitap2

SELECT * FROM Kitap WHERE KitapSayfa in (SELECT KitapFiyat FROM Kitap2 WHERE KitapRengi = 'mor')

SELECT * FROM Kitap
SELECT * FROM Kitap2

SELECT * FROM Kitap WHERE KitapSayfa in (SELECT KitapSayfa FROM Kitap2 WHERE KitapYayýnEvi = 'MaviBulut')

SELECT * FROM Kitap
SELECT * FROM Kitap2

SELECT * FROM Kitap2 WHERE KitapFiyat in (SELECT KitapSayfa FROM Kitap WHERE KitapRengi = 'kahverengi') 

SELECT * FROM Kitap
SELECT * FROM Kitap2

SELECT * FROM Kitap WHERE KitapYayýnEvi in (SELECT KitapYayýnEvi FROM Kitap2 WHERE KitapYazar = 'Tolstoy') 

SELECT * FROM Kitap
SELECT * FROM Kitap2

SELECT * FROM Kitap WHERE KitapRengi in (SELECT KitapRengi FROM Kitap2 WHERE KitapAd like '%a')

SELECT * FROM Kitap
SELECT * FROM Kitap2

SELECT * FROM Kitap WHERE KitapRengi in (SELECT KitapRengi FROM Kitap2 WHERE KitapAd like 'g%')