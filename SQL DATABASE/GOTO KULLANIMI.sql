--GOTO KULLANIMI


declare @sayaç tinyint
set @sayaç = 1
sonuc:
print 'sayaç : ' + cast(@sayaç as varchar(3))
set @sayaç = @sayaç + 1
while (@sayaç <= 20)
goto sonuc


declare @sayaç2 tinyint
set @sayaç2 = 50
sonuc:
print 'sayaç2 : ' + cast(@sayaç2 as varchar(3))
set @sayaç2 = @sayaç2 - 1
while (@sayaç2 > 0)
goto sonuc


declare @sayaç3 int
set @sayaç3 = 1
sonuc:
print 'sayaç3 : ' + cast(@sayaç3 as varchar(5))
set @sayaç3 = @sayaç3 * 2
while (@sayaç3 < 10000)
goto sonuc


declare @sayaç4 int
set @sayaç4 = 10000
sonuc:
print 'sayaç4 : ' + cast(@sayaç4 as varchar(5))
set @sayaç4 = @sayaç4 / 2
while (@sayaç4 > 1)
goto sonuc