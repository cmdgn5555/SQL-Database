--UNION ALL KULLANIMI


SELECT * FROM Kitap
SELECT * FROM Kitap2

SELECT KitapYay�nEvi FROM Kitap union all SELECT KitapYay�nEvi FROM Kitap2 order by KitapYay�nEvi asc

SELECT * FROM Kitap
SELECT * FROM Kitap2

SELECT KitapRengi FROM Kitap union all SELECT KitapRengi FROM Kitap2 order by KitapRengi asc