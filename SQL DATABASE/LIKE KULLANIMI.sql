--LIKE KULLANIMI


SELECT * FROM Kitap

SELECT KitapAd, KitapYazar FROM Kitap

SELECT * FROM Kitap2

SELECT Kitap.KitapAd, Kitap2.KitapFiyat FROM Kitap, Kitap2

SELECT Kitap.KitapNo, Kitap2.KitapYay�nEvi FROM Kitap, Kitap2

SELECT * FROM Kitap2 WHERE KitapYay�nEvi like 'g______'

SELECT * FROM Kitap2 WHERE KitapYay�nEvi like '__d_'

SELECT * FROM Kitap2 WHERE KitapYay�nEvi like '_o_e_'

SELECT * FROM Kitap2 WHERE KitapYay�nEvi like 'a__a'

SELECT * FROM Kitap2 WHERE KitapYay�nEvi in('arma', 'uydu')

SELECT * FROM Kitap2

SELECT * FROM Kitap2 WHERE KitapAd like '%s%'

SELECT * FROM Kitap2 WHERE KitapYay�nEvi like 'j%'

SELECT * FROM Kitap2 WHERE KitapYazar like '%i'

SELECT * FROM Kitap2 WHERE KitapAd like '[��]%'

SELECT * FROM Kitap2 WHERE KitapYazar like '%[cne]'

SELECT * FROM Kitap2 WHERE KitapYay�nEvi like '%[yg]%'

SELECT * FROM Kitap2 WHERE KitapYazar like 'e%s'

SELECT * FROM Kitap2 WHERE KitapAd like 's%d'

SELECT * FROM Kitap2 WHERE KitapAd like '[c-m]%'

SELECT * FROM Kitap2 WHERE KitapYazar like '[b-r]%'

SELECT * FROM Kitap2 WHERE KitapAd like '_____c_'

SELECT * FROM Kitap2 WHERE KitapYazar like '_a%'

SELECT * FROM Kitap2

SELECT * FROM Kitap2 WHERE KitapYazar like '[a-g]%'

SELECT * FROM Kitap2 WHERE KitapYazar like '[^a-g]%'

SELECT * FROM Kitap2

SELECT * FROM Kitap2 WHERE KitapAd like '[a-e]%'

SELECT * FROM Kitap2 WHERE KitapAd like '[^a-e]%'