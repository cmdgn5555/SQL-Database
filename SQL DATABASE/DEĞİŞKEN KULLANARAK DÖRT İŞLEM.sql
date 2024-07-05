--DEÐÝÞKEN KULLANARAK DÖRT ÝÞLEM


declare @sayý1 int, @sayý2 int, @toplam int, @fark int, @çarpým int, @bölüm int

set @sayý1 = 100
set @sayý2 = 20

set @toplam = @sayý1 + @sayý2
set @fark = @sayý1 - @sayý2
set @çarpým = @sayý1 * @sayý2
set @bölüm = @sayý1 / @sayý2

print 'TOPLAM: ' + cast(@toplam as varchar(5))
print 'FARK: ' + cast(@fark as varchar(5))
print 'ÇARPIM: ' + cast(@çarpým as varchar(5))
print 'BÖLÜM: ' + cast(@bölüm as varchar(5))


declare @sayý3 int, @karesi int, @kuvveti int, @karekökü int

set @sayý3 = 64

set @karesi = SQUARE(@sayý3)
set @kuvveti = POWER(@sayý3, 5)
set @karekökü = SQRT(@sayý3)

print 'KARESÝ: ' + cast(@karesi as varchar(5))
print 'KUVVETÝ: ' + cast(@kuvveti as varchar(10))
print 'KAREKÖKÜ: ' + cast(@karekökü as varchar(5))