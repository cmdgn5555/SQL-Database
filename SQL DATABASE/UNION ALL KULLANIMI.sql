--UNION ALL KULLANIMI


SELECT * FROM Kitap
SELECT * FROM Kitap2

SELECT KitapYayżnEvi FROM Kitap union all SELECT KitapYayżnEvi FROM Kitap2 order by KitapYayżnEvi asc

SELECT * FROM Kitap
SELECT * FROM Kitap2

SELECT KitapRengi FROM Kitap union all SELECT KitapRengi FROM Kitap2 order by KitapRengi asc