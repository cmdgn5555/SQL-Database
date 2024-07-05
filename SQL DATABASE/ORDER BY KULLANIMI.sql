--ORDER BY KULLANIMI


INSERT INTO Kitap VALUES(27, 'Kürk Mantolu Madonna', 'Sabahattin Ali', 160, 295, '2016-04-07', 'Jüpiter')

SELECT * FROM Kitap ORDER BY KitapNo

SELECT * FROM Kitap ORDER BY KitapNo DESC

SELECT * FROM Kitap ORDER BY KitapAd ASC

SELECT * FROM Kitap ORDER BY KitapAd DESC

SELECT * FROM Kitap ORDER BY KitapSayfa ASC

SELECT * FROM Kitap ORDER BY KitapSayfa DESC

SELECT * FROM Kitap ORDER BY KitapFiyat ASC

SELECT * FROM Kitap ORDER BY KitapFiyat DESC

SELECT * FROM Kitap ORDER BY KitapYayýnEvi, KitapFiyat DESC

SELECT * FROM Kitap ORDER BY KitapYayýnEvi DESC, KitapFiyat ASC

SELECT * FROM Kitap ORDER BY KitapYayýnEvi, KitapSayfa DESC

SELECT * FROM Kitap ORDER BY KitapYayýnEvi DESC, KitapYazar ASC

SELECT * FROM Kitap ORDER BY KitapYayýnEvi, KitapAd DESC

SELECT * FROM Kitap2 ORDER BY KitapYazar

SELECT * FROM Kitap2 ORDER BY KitapYayýnEvi DESC