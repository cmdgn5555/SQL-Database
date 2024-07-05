--IF-ELSE KULLANIMI


declare @City_number tinyint
select @City_number=COUNT(Þehir) from Kiþiler
if (@City_number > 25)
begin
print 'yeterli sayýda þehir vardýr... þehir sayýsý : ' + cast(@City_number as varchar(3))
end
else
begin
print 'yeterli sayýda þehir yoktur... þehir sayýsý : ' + cast(@City_number as varchar(3))
end


declare @Profession varchar(20)
select @Profession=count(Meslek) from Kiþiler where Meslek like 'M%'
if (@Profession > 5)
begin
print 'm harfi ile baþlayan meslek sayýsý 5 ten fazladýr...' + @Profession + ' adet m ile baþlayan meslek vardýr...'
end
else
begin
print 'm harfi ile baþlayan meslek sayýsý 5 ten azdýr...' + @Profession + ' adet m ile baþlayan meslek vardýr...'
end


declare @Salary_number int
select @Salary_number=count(Maaþ) from Kiþiler where Maaþ between 3000 and 4000
if (@Salary_number > 10)
begin
print 'maaþýn 3000 ile 4000 arasýnda olduðu kayýt sayýsý 10 dan büyüktür... sayý : ' + cast(@Salary_number as varchar(5))
end
else
begin
print 'maaþýn 3000 ile 4000 arasýnda olduðu kayýt sayýsý 10 dan küçüktür... sayý : ' + cast(@Salary_number as varchar(5))
end


declare @Surname_number tinyint
select @Surname_number=count(Soyad) from Kiþiler where Soyad like '%z'
if (@Surname_number = 3)
begin
print 'soyadý z ile biten kayýt sayýsý 3 tür...soyadý z ile biten kayýt sayýsý : ' + cast(@Surname_number as varchar(1))
end
else
begin
print 'soyadý z ile biten kayýt sayýsý 3 den farklýdýr...soyadý z ile biten kayýt sayýsý : ' + cast(@Surname_number as varchar(1))
end


declare @Aylýk_maaþ int
select @Aylýk_maaþ=count(Maaþ) from Kiþiler where Maaþ >= 3000 and Maaþ <= 4000
if(@Aylýk_maaþ < 5)
begin
print 'maaþý 3000-4000 arasý olan kayýt sayýsý düþük ' + cast(@Aylýk_maaþ as varchar(5))
end
else if (@Aylýk_maaþ >= 5 and @Aylýk_maaþ <=8)
begin
print 'maaþý 3000-4000 arasý olan kayýt sayýsý ideal ' + cast(@Aylýk_maaþ as varchar(5))
end
else
begin
print 'maaþý 3000-4000 arasý olan kayýt sayýsý yüksek ' + cast(@Aylýk_maaþ as varchar(5))
end


declare @Aylýk_maaþ2 int
select @Aylýk_maaþ2=count(Þehir) from Kiþiler where Þehir in ('Bursa', 'Balýkesir')
if(@Aylýk_maaþ2 < 5)
begin
print 'þehir ismi bursa yada balýkesir olan kayýt sayýsý düþük ' + cast(@Aylýk_maaþ2 as varchar(5))
end
else if (@Aylýk_maaþ2 >= 5 and @Aylýk_maaþ2 <=10)
begin
print 'þehir ismi bursa yada balýkesir olan kayýt sayýsý ideal ' + cast(@Aylýk_maaþ2 as varchar(5))
end
else
begin
print 'þehir ismi bursa yada balýkesir olan kayýt sayýsý yüksek ' + cast(@Aylýk_maaþ2 as varchar(5))
end


declare @Þehri int
select @Þehri=count(Þehir) from Kiþiler where Meslek in ('Öðretmen', 'Oyuncu', 'Mühendis')
if(@Þehri < 10)
begin
print 'mesleði öðretmen, oyuncu yada mühendis olan kayýt sayýsý düþük ' + cast(@Þehri as varchar(5))
end
else if (@Þehri >= 10 and @Þehri <=20)
begin
print 'mesleði öðretmen, oyuncu yada mühendis olan kayýt sayýsý ideal ' + cast(@Þehri as varchar(5))
end
else
begin
print 'mesleði öðretmen, oyuncu yada mühendis olan kayýt sayýsý yüksek ' + cast(@Þehri as varchar(5))
end