--STORED PROCEDURE AR�TMET�K ��LEMLER


create procedure Toplamlar�(@say1 int, @say2 int, @result int output)
as
set @result = @say1 + @say2

declare @t int
execute Toplamlar� 2, 6, @t output
print @t


create procedure Farklar�(@say3 int, @say4 int, @result2 int output)
as
set @result2 = @say3 - @say4

declare @f int
execute Farklar� 8, 7, @f output
print @f


create procedure �arp�mlar�(@say5 int, @say6 int, @result3 int output)
as
set @result3 = @say5 * @say6

declare @� int
execute �arp�mlar� 10, 4, @� output
print @�


create procedure B�l�mleri(@say7 int, @say8 int, @result4 int output)
as
set @result4 = @say7 / @say8

declare @b int
execute B�l�mleri 35, 5, @b output
print @b


create procedure carp(@say�m�z1 int, @say�m�z2 int, @say�m�z3 int, @sonucumuz int output)
as
set @sonucumuz = @say�m�z1 * @say�m�z2 * @say�m�z3
print 'Sonu�: ' + cast(@sonucumuz as varchar(5))

declare @res int
execute carp 5, 15, 20, @res output


create procedure b�l(@say�m�z4 int, @say�m�z5 int, @say�m�z6 int, @sonucumuz2 int output)
as
set @sonucumuz2 = @say�m�z4 / @say�m�z5 / @say�m�z6
print 'Sonu�: ' + cast(@sonucumuz2 as varchar(3))

declare @res2 int
execute b�l 2000, 4, 25, @res2 output


create procedure �ss�(@say�m�z7 int, @sonucumuz3 int output)
as
set @sonucumuz3 = POWER(@say�m�z7, 3)
print '�ss�: ' + cast(@sonucumuz3 as varchar(10))

declare @res3 int
execute �ss� 6, @res3 output


create procedure karek�k�(@say�m�z8 int, @sonucumuz4 int output)
as
set @sonucumuz4 = SQRT(@say�m�z8)
print 'Karek�k�: ' + cast(@sonucumuz4 as varchar(5))

declare @res4 int
execute karek�k� 6561, @res4 output


create procedure ortalama(@num1 int, @num2 int, @num3 int, @num4 int, @sonucumuz5 int output)
as
set @sonucumuz5 = (@num1 + @num2 + @num3 + @num4) / 4
print 'Ortalamas�: ' + cast(@sonucumuz5 as varchar(5))

declare @res5 int
execute ortalama 200, 400, 600, 800, @res5 