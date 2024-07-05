--WHERE KOMUTU SORGULARI


SELECT * FROM Kitap

SELECT * FROM Kitap WHERE KitapAd = 'Palto'

SELECT * FROM Kitap WHERE KitapYazar = 'Grigory Petrov'

SELECT * FROM Kitap WHERE KitapSayfa >= 200

SELECT * FROM Kitap WHERE KitapFiyat <= 100

SELECT * FROM Kitap WHERE KitapYayýnEvi = 'Güneþ' and KitapFiyat < 200

SELECT * FROM Kitap WHERE KitapYayýnEvi = 'Merkür' and KitapSayfa > 200

SELECT * FROM Kitap WHERE KitapSayfa > 250 or KitapFiyat < 100

SELECT * FROM Kitap WHERE KitapSayfa > 150 and KitapFiyat < 100

SELECT * FROM Kitap WHERE KitapFiyat in(115, 195, 280, 140)

SELECT * FROM Kitap WHERE KitapSayfa in(340, 130, 430, 190, 200)

SELECT * FROM Kitap WHERE KitapYayýnEvi in('Ay', 'Jüpiter', 'MaviBulut')

SELECT * FROM Kitap WHERE KitapAd like '%z%' and KitapSayfa > 200

SELECT * FROM Kitap WHERE KitapAd like 's%' and KitapSayfa > 300

SELECT * FROM Kitap WHERE KitapAd like '%r' and KitapSayfa < 200

SELECT * FROM Kitap WHERE KitapAd like '%a%' and KitapYayýnEvi in('Güneþ', 'Yýldýz')

SELECT * FROM Kitap WHERE KitapAd like 'b%' and KitapYazar like '%e%'

SELECT * FROM Kitap WHERE KitapAd like '%t' and KitapYazar like '%s%'