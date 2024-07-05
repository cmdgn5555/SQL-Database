--IN AND OR > < KULLANIMI


SELECT * FROM Kitap WHERE KitapTarih < '2016-01-01'

SELECT * FROM Kitap WHERE KitapTarih > '2016-05-20'

SELECT * FROM Kitap WHERE KitapFiyat > 300 or KitapYayınEvi = 'MaviBulut' ORDER BY KitapAd DESC

SELECT * FROM Kitap WHERE KitapYayınEvi in ('Venüs', 'Ay', 'Jüpiter')

SELECT * FROM Kitap WHERE KitapFiyat > 300 and KitapFiyat < 400

SELECT * FROM Kitap WHERE KitapSayfa > 500 and KitapSayfa < 800