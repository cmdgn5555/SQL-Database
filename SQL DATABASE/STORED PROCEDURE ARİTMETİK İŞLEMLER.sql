--STORED PROCEDURE ARÝTMETÝK ÝÞLEMLER


create procedure Toplamlarý(@say1 int, @say2 int, @result int output)
as
set @result = @say1 + @say2

declare @t int
execute Toplamlarý 2, 6, @t output
print @t


create procedure Farklarý(@say3 int, @say4 int, @result2 int output)
as
set @result2 = @say3 - @say4

declare @f int
execute Farklarý 8, 7, @f output
print @f


create procedure Çarpýmlarý(@say5 int, @say6 int, @result3 int output)
as
set @result3 = @say5 * @say6

declare @ç int
execute Çarpýmlarý 10, 4, @ç output
print @ç


create procedure Bölümleri(@say7 int, @say8 int, @result4 int output)
as
set @result4 = @say7 / @say8

declare @b int
execute Bölümleri 35, 5, @b output
print @b


create procedure carp(@sayýmýz1 int, @sayýmýz2 int, @sayýmýz3 int, @sonucumuz int output)
as
set @sonucumuz = @sayýmýz1 * @sayýmýz2 * @sayýmýz3
print 'Sonuç: ' + cast(@sonucumuz as varchar(5))

declare @res int
execute carp 5, 15, 20, @res output


create procedure böl(@sayýmýz4 int, @sayýmýz5 int, @sayýmýz6 int, @sonucumuz2 int output)
as
set @sonucumuz2 = @sayýmýz4 / @sayýmýz5 / @sayýmýz6
print 'Sonuç: ' + cast(@sonucumuz2 as varchar(3))

declare @res2 int
execute böl 2000, 4, 25, @res2 output


create procedure üssü(@sayýmýz7 int, @sonucumuz3 int output)
as
set @sonucumuz3 = POWER(@sayýmýz7, 3)
print 'Üssü: ' + cast(@sonucumuz3 as varchar(10))

declare @res3 int
execute üssü 6, @res3 output


create procedure karekökü(@sayýmýz8 int, @sonucumuz4 int output)
as
set @sonucumuz4 = SQRT(@sayýmýz8)
print 'Karekökü: ' + cast(@sonucumuz4 as varchar(5))

declare @res4 int
execute karekökü 6561, @res4 output


create procedure ortalama(@num1 int, @num2 int, @num3 int, @num4 int, @sonucumuz5 int output)
as
set @sonucumuz5 = (@num1 + @num2 + @num3 + @num4) / 4
print 'Ortalamasý: ' + cast(@sonucumuz5 as varchar(5))

declare @res5 int
execute ortalama 200, 400, 600, 800, @res5 