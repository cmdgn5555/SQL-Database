--TRANSACTION KULLANIMI


begin transaction 

UPDATE Kitap3 SET KitapBaský = 11
UPDATE Kitap3 SET KitapRengi = 'kahverengi'

SELECT * FROM Kitap3

rollback

SELECT * FROM Kitap3


begin transaction 

UPDATE Kitap3 SET KitapBaský = 42
UPDATE Kitap3 SET KitapRengi = 'turkuaz'

SELECT * FROM Kitap3

commit

SELECT * FROM Kitap3


begin transaction 

DELETE FROM Kitap3 WHERE KitapNo = 6

SELECT * FROM Kitap3

rollback

SELECT * FROM Kitap3


begin transaction 

DELETE FROM Kitap3 WHERE KitapNo = 4

SELECT * FROM Kitap3

commit

SELECT * FROM Kitap3


begin transaction 

DELETE FROM Kitap3 WHERE KitapNo = 1

SELECT * FROM Kitap3

rollback

SELECT * FROM Kitap3