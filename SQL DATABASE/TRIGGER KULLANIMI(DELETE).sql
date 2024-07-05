--TRIGGER KULLANIMI(DELETE)


create trigger SilmeKontrol
on Kitap5
after delete
as
begin
select 'kayýt tablodan silindi'
end

delete from Kitap5 where KitapYayýnEvi = 'CUMHUR' 

select * from Kitap5


create trigger SilmeKontrol2
on Kitap5
after delete
as
begin
update Guncelleme set sayac = sayac - 1
end

delete from Kitap5 where KitapYazar = 'Onur Doðan'

select * from Kitap5

select * from Guncelleme


alter trigger maximumhaksilme
on Kitap5
after delete
as
begin
declare @hak tinyint
select @hak=Sayac from Guncelleme4
if(@hak<=0)
begin
select 'Silme Hakkýnýz Kalmamýþtýr'
end
else
begin
print 'Kalan silme Hakkýnýz: ' +str(@hak)
update Guncelleme4 set Sayac -= 1
end
end

select * from Guncelleme4

delete from Kitap5 where KitapAd = 'Çocuklar'

select * from Kitap5