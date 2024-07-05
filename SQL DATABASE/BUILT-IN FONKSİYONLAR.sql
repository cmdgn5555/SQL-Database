--BUILT-IN FONKSÝYONLAR


SELECT * FROM Kitap2

SELECT SUBSTRING(KitapAd, 3, 7) FROM Kitap2

SELECT * FROM Kitap2

SELECT SUBSTRING(KitapYayýnEvi, 2, 5) AS SUB_YAYIN_EVÝ FROM Kitap2

SELECT * FROM Kitap2



SELECT LEFT(KitapAd, 6) AS SOLDAN FROM Kitap2

SELECT * FROM Kitap2



SELECT RIGHT(KitapYazar, 8) AS SAÐDAN FROM Kitap2

SELECT * FROM Kitap2



SELECT UPPER(KitapYazar) AS BÜYÜKHARF FROM Kitap2

SELECT * FROM Kitap2



SELECT LOWER(KitapAd) AS KÜÇÜKHARF FROM Kitap2

SELECT * FROM Kitap2



SELECT KitapAd, LEN(KitapAd) AS KARAKTER_SAYISI FROM Kitap2

SELECT * FROM Kitap2

SELECT KitapYayýnEvi, LEN(KitapYayýnEvi) AS KARAKTER_SAYISI FROM Kitap2

SELECT * FROM Kitap2

SELECT KitapYayýnEvi, LEN(KitapYayýnEvi) AS KARAKTER_SAYISI FROM Kitap2 WHERE LEN(KitapYayýnEvi) > 5

SELECT KitapAd, LEN(KitapAd) AS KARAKTER_SAYISI FROM Kitap2 WHERE LEN(KitapAd) < 10



SELECT KitapAd, REPLACE(KitapYazar, 'Edmondo De Amicis', 'E. D. A.') AS YENÝ_ÝSÝM FROM Kitap2

SELECT KitapAd, REPLACE(KitapAd, 'Ýlahi Komedya', 'Ý.Kom.') AS YENÝ_ÝSÝM FROM Kitap2



SELECT KitapAd, REVERSE(KitapAd) AS TERS FROM Kitap2

SELECT KitapYayýnEvi, REVERSE(KitapYayýnEvi) AS TERS FROM Kitap2 



SELECT * FROM Kitap2

SELECT KitapOran, ceiling(KitapOran) AS TAVAN FROM Kitap2

SELECT KitapPuan, ceiling(KitapPuan) AS TAVAN FROM Kitap2



SELECT * FROM Kitap2

SELECT KitapOran, floor(KitapOran) AS TABAN FROM Kitap2

SELECT KitapPuan, floor(KitapPuan) AS TABAN FROM Kitap2



SELECT KitapOran, KitapPuan, ROUND(KitapOran, 5) AS YUVARLA FROM Kitap2

SELECT KitapOran, KitapPuan, ROUND(KitapPuan, 3) AS YUVARLA FROM Kitap2 



SELECT KitapAd, KitapPuan, POWER(KitapPuan, 3) AS ÜS FROM Kitap2

SELECT KitapAd, KitapOran, POWER(KitapOran, 2) AS ÜS FROM Kitap2



SELECT KitapAd, KitapOran, SQRT(KitapOran) AS KAREKÖK FROM Kitap2

SELECT KitapAd, KitapPuan, SQRT(KitapPuan) AS KAREKÖK FROM Kitap2



SELECT KitapPuan FROM Kitap2

SELECT SUM(KitapPuan) AS TOPLAM FROM Kitap2

SELECT KitapOran FROM Kitap2

SELECT SUM(KitapOran) AS TOPLAM FROM Kitap2

SELECT KitapNo FROM Kitap2

SELECT SUM(KitapNo) AS TOPLAM FROM Kitap2 WHERE KitapNo > 15

SELECT KitapSayfa FROM Kitap2

SELECT SUM(KitapSayfa) AS TOPLAM FROM Kitap2 WHERE KitapSayfa < 300 and KitapSayfa > 0

SELECT KitapFiyat FROM Kitap2

SELECT SUM(KitapFiyat) AS TOPLAM FROM Kitap2 WHERE KitapFiyat < 400 and KitapFiyat > 300

SELECT KitapTarih, KitapFiyat FROM Kitap2

SELECT SUM(KitapFiyat) AS TOPLAM FROM Kitap2 WHERE KitapTarih between '2015-01-01' and '2016-01-01'



SELECT KitapTarih, KitapFiyat FROM Kitap2

SELECT AVG(KitapFiyat) AS ORTALAMA FROM Kitap2 WHERE KitapTarih between '2015-01-01' and '2016-01-01'

SELECT KitapSayfa, KitapFiyat FROM Kitap2

SELECT AVG(KitapFiyat) AS ORTALAMA FROM Kitap2 WHERE KitapSayfa between 400 and 500

SELECT KitapFiyat, KitapYayýnEvi FROM Kitap2

SELECT AVG(KitapFiyat) AS ORTALAMA FROM Kitap2 WHERE KitapYayýnEvi = 'gezegen'



SELECT KitapFiyat, KitapYayýnEvi FROM Kitap2

SELECT MAX(KitapFiyat) AS MAKSÝMUM FROM Kitap2 WHERE KitapYayýnEvi = 'MaviBulut' 

SELECT KitapNo, KitapSayfa FROM Kitap2

SELECT MAX(KitapSayfa) AS MAKSÝMUM FROM Kitap2 WHERE KitapNo between 5 and 20

SELECT KitapTarih, KitapFiyat FROM Kitap2

SELECT MAX(KitapTarih) AS MAKSÝMUM FROM Kitap2 WHERE KitapFiyat > 400



SELECT KitapNo, KitapYayýnEvi FROM Kitap2

SELECT MIN(KitapNo) AS MÝNÝMUM FROM Kitap2 WHERE KitapYayýnEvi = 'uydu'

SELECT KitapSayfa, KitapFiyat FROM Kitap2

SELECT MIN(KitapSayfa) AS MÝNÝMUM FROM Kitap2 WHERE KitapFiyat between 200 and 300



SELECT KitapYayýnEvi, KitapFiyat FROM Kitap2

SELECT COUNT(KitapYayýnEvi) AS SAYI FROM Kitap2 WHERE KitapFiyat between 200 and 500

SELECT KitapAd, KitapYazar FROM Kitap2

SELECT COUNT(KitapAd) AS SAYI FROM Kitap2 WHERE KitapYazar like '%o%'

SELECT KitapYayýnEvi, KitapAd FROM Kitap2

SELECT COUNT(KitapYayýnEvi) AS SAYI FROM Kitap2 WHERE KitapAd like '%r'

SELECT KitapTarih, KitapYayýnEvi FROM Kitap2

SELECT COUNT(KitapTarih) AS SAYI FROM Kitap2 WHERE KitapYayýnEvi like 'm%'