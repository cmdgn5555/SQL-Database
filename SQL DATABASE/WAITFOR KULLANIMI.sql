--WAITFOR KULLANIMI

waitfor delay '00:00:10'
select * from Kitap

waitfor time '17:28:30'
select * from Kitap5


waitfor delay '00:00:10'
declare @sayaç5 int
set @sayaç5 = 1
sonuc:
print 'sayaç5 : ' + cast(@sayaç5 as varchar(10))
set @sayaç5 = @sayaç5 + 1
while (@sayaç5 < 100000)
goto sonuc


waitfor time '17:39:00'
declare @sayaç6 int
set @sayaç6 = 1000000
sonuc:
print 'sayaç6 : ' + cast(@sayaç6 as varchar(15))
set @sayaç6 = @sayaç6 - 1
while (@sayaç6 > 0)
goto sonuc