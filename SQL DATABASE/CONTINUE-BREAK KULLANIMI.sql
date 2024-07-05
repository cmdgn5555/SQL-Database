--CONTINUE-BREAK KULLANIMI


declare @sayi4 int
set @sayi4 = 10
while(@sayi4 <= 20)
begin
if (@sayi4 = 18)
begin
print '18 sayýsýnýn küpünü hesaplamadýk...'
set @sayi4 = @sayi4 + 1
continue
end
print cast(@sayi4 as varchar(5)) + ' sayýsýnýn küpü : ' + cast(@sayi4 * @sayi4 * @sayi4 as varchar(5))
set @sayi4 = @sayi4 + 1
end


declare @counter5 int = 0
while @counter5 < 100
begin
if @counter5 % 9 = 0
begin
set @counter5 += 1
continue
end
print @counter5
set @counter5 += 1
end


declare @counter6 int = 50
while @counter6 > 0
begin
if @counter6 % 11 = 0 or @counter6 % 13 = 0 or @counter6 % 17 = 0
begin
set @counter6 -= 1
continue
end
print @counter6
set @counter6 -= 1
end


declare @counter7 int = 1
while @counter7 < 100
begin
if @counter7 = 30
begin
set @counter7 += 1
print 'sayý 30 a ulaþtý...'
continue
end
else if @counter7 = 50
begin
set @counter7 += 1
print 'sayý 50 ye ulaþtý...'
continue
end
print @counter7
set @counter7 += 1
end


declare @counter3 int = 0
while @counter3 < 50
begin
print @counter3
set @counter3 += 1
if @counter3 % 5 = 0 and @counter3 % 7 = 0
break
end


declare @counter4 int = 100
while @counter4 > 0
begin
print @counter4
set @counter4 -= 1
if @counter4 % 9 = 0 and @counter4 % 8 = 0
break
end