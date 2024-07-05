--WHILE KULLANIMI


declare @sayý int
set @sayý = 5
print @sayý


declare @number1 int
set @number1 = 10
while(@number1 <= 50)
begin
print @number1
set @number1 = @number1 + 1
end


declare @number2 int
set @number2 = 1
while(@number2 <= 100)
begin
print cast(@number2 as varchar(3)) + '. sql derslerine hoþgeldiniz!!!'
set @number2 = @number2 + 1
end


declare @Yazi VARCHAR(50) = 'sql derslerine hoþgeldiniz'
declare @KarakterSayisi INT = LEN(@Yazi)
declare @Sayac INT = 1
while @Sayac <= @KarakterSayisi
begin
  print SUBSTRING(@Yazi, @Sayac, 1)
  set @SAYAC = @SAYAC + 1
end


declare @sayi int
set @sayi = 10
while (@sayi <= 20)
begin
print cast(@sayi as varchar(5)) + ' sayýsýnýn karesi: ' + cast(@sayi * @sayi as varchar(5))
set @sayi = @sayi + 1
end


declare @sayi2 int
set @sayi2 = 30
while (@sayi2 <= 40)
begin
print cast(@sayi2 as varchar(5)) + ' sayýsýnýn küpü: ' + cast(@sayi2 * @sayi2 * @sayi2 as varchar(5))
set @sayi2 = @sayi2 + 1
end


declare @sayi3 int
set @sayi3 = 10
while(@sayi3 <= 20)
begin
if (@sayi3 = 15)
begin
print 'sayýmýz 15 e geldi'
end
print cast(@sayi3 as varchar(5)) + ' sayýsýnýn karesi : ' + cast(@sayi3 * @sayi3 as varchar(5))
set @sayi3 = @sayi3 + 1
end


declare @isim varchar(15) = 'veritabaný'
declare @counter int = 1
while @counter <= LEN(@isim)
begin
print substring(@isim, 1, @counter)
set @counter += 1
end


declare @counter2 int = 0
while @counter2 < 100
begin
if @counter2 = 50
begin
print 'sayaç 50 sayýsýna geldi...'
end
else if @counter2 = 80
begin
print 'sayaç 80 sayýsýna geldi...'
end
print @counter2 
set @counter2 += 10
end