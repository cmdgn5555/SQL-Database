--WAITFOR KULLANIMI

waitfor delay '00:00:10'
select * from Kitap

waitfor time '17:28:30'
select * from Kitap5


waitfor delay '00:00:10'
declare @saya�5 int
set @saya�5 = 1
sonuc:
print 'saya�5 : ' + cast(@saya�5 as varchar(10))
set @saya�5 = @saya�5 + 1
while (@saya�5 < 100000)
goto sonuc


waitfor time '17:39:00'
declare @saya�6 int
set @saya�6 = 1000000
sonuc:
print 'saya�6 : ' + cast(@saya�6 as varchar(15))
set @saya�6 = @saya�6 - 1
while (@saya�6 > 0)
goto sonuc