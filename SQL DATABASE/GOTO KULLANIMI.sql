--GOTO KULLANIMI


declare @saya� tinyint
set @saya� = 1
sonuc:
print 'saya� : ' + cast(@saya� as varchar(3))
set @saya� = @saya� + 1
while (@saya� <= 20)
goto sonuc


declare @saya�2 tinyint
set @saya�2 = 50
sonuc:
print 'saya�2 : ' + cast(@saya�2 as varchar(3))
set @saya�2 = @saya�2 - 1
while (@saya�2 > 0)
goto sonuc


declare @saya�3 int
set @saya�3 = 1
sonuc:
print 'saya�3 : ' + cast(@saya�3 as varchar(5))
set @saya�3 = @saya�3 * 2
while (@saya�3 < 10000)
goto sonuc


declare @saya�4 int
set @saya�4 = 10000
sonuc:
print 'saya�4 : ' + cast(@saya�4 as varchar(5))
set @saya�4 = @saya�4 / 2
while (@saya�4 > 1)
goto sonuc