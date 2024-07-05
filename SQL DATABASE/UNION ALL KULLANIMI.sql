--UNION ALL KULLANIMI


SELECT * FROM Kitap
SELECT * FROM Kitap2

SELECT KitapYayýnEvi FROM Kitap union all SELECT KitapYayýnEvi FROM Kitap2 order by KitapYayýnEvi asc

SELECT * FROM Kitap
SELECT * FROM Kitap2

SELECT KitapRengi FROM Kitap union all SELECT KitapRengi FROM Kitap2 order by KitapRengi asc