--DE���KEN KULLANARAK D�RT ��LEM


declare @say�1 int, @say�2 int, @toplam int, @fark int, @�arp�m int, @b�l�m int

set @say�1 = 100
set @say�2 = 20

set @toplam = @say�1 + @say�2
set @fark = @say�1 - @say�2
set @�arp�m = @say�1 * @say�2
set @b�l�m = @say�1 / @say�2

print 'TOPLAM: ' + cast(@toplam as varchar(5))
print 'FARK: ' + cast(@fark as varchar(5))
print '�ARPIM: ' + cast(@�arp�m as varchar(5))
print 'B�L�M: ' + cast(@b�l�m as varchar(5))


declare @say�3 int, @karesi int, @kuvveti int, @karek�k� int

set @say�3 = 64

set @karesi = SQUARE(@say�3)
set @kuvveti = POWER(@say�3, 5)
set @karek�k� = SQRT(@say�3)

print 'KARES�: ' + cast(@karesi as varchar(5))
print 'KUVVET�: ' + cast(@kuvveti as varchar(10))
print 'KAREK�K�: ' + cast(@karek�k� as varchar(5))