--ORDER BY KULLANIMI


INSERT INTO Kitap VALUES(27, 'K�rk Mantolu Madonna', 'Sabahattin Ali', 160, 295, '2016-04-07', 'J�piter')

SELECT * FROM Kitap ORDER BY KitapNo

SELECT * FROM Kitap ORDER BY KitapNo DESC

SELECT * FROM Kitap ORDER BY KitapAd ASC

SELECT * FROM Kitap ORDER BY KitapAd DESC

SELECT * FROM Kitap ORDER BY KitapSayfa ASC

SELECT * FROM Kitap ORDER BY KitapSayfa DESC

SELECT * FROM Kitap ORDER BY KitapFiyat ASC

SELECT * FROM Kitap ORDER BY KitapFiyat DESC

SELECT * FROM Kitap ORDER BY KitapYay�nEvi, KitapFiyat DESC

SELECT * FROM Kitap ORDER BY KitapYay�nEvi DESC, KitapFiyat ASC

SELECT * FROM Kitap ORDER BY KitapYay�nEvi, KitapSayfa DESC

SELECT * FROM Kitap ORDER BY KitapYay�nEvi DESC, KitapYazar ASC

SELECT * FROM Kitap ORDER BY KitapYay�nEvi, KitapAd DESC

SELECT * FROM Kitap2 ORDER BY KitapYazar

SELECT * FROM Kitap2 ORDER BY KitapYay�nEvi DESC