--WHILE KULLANIMI


declare @say� int
set @say� = 5
print @say�


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
print cast(@number2 as varchar(3)) + '. sql derslerine ho�geldiniz!!!'
set @number2 = @number2 + 1
end


declare @Yazi VARCHAR(50) = 'sql derslerine ho�geldiniz'
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
print cast(@sayi as varchar(5)) + ' say�s�n�n karesi: ' + cast(@sayi * @sayi as varchar(5))
set @sayi = @sayi + 1
end


declare @sayi2 int
set @sayi2 = 30
while (@sayi2 <= 40)
begin
print cast(@sayi2 as varchar(5)) + ' say�s�n�n k�p�: ' + cast(@sayi2 * @sayi2 * @sayi2 as varchar(5))
set @sayi2 = @sayi2 + 1
end


declare @sayi3 int
set @sayi3 = 10
while(@sayi3 <= 20)
begin
if (@sayi3 = 15)
begin
print 'say�m�z 15 e geldi'
end
print cast(@sayi3 as varchar(5)) + ' say�s�n�n karesi : ' + cast(@sayi3 * @sayi3 as varchar(5))
set @sayi3 = @sayi3 + 1
end


declare @isim varchar(15) = 'veritaban�'
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
print 'saya� 50 say�s�na geldi...'
end
else if @counter2 = 80
begin
print 'saya� 80 say�s�na geldi...'
end
print @counter2 
set @counter2 += 10
end