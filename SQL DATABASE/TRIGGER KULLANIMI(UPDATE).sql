--TRIGGER KULLANIMI(UPDATE)


create trigger Deneme4
on Kitap5
after update
as
begin
select 'g�ncelleme i�lemi ger�ekle�ti..'
end

update Kitap5 set KitapFiyat = 175 where KitapYay�nEvi = 'DEM�RB�LEK'

select * from Kitap5


create trigger Deneme5
on Kitap5
after update
as
begin
update Guncelleme set sayac = sayac + 1
end

update Kitap5 set KitapFiyat = 100 where KitapAd = 'Dikenli Yol'

select * from Kitap5

select * from Guncelleme


alter trigger Deneme6
on Kitap5
after update
as
begin
update Guncelleme2 set sayac = sayac - 1
end

update Kitap5 set KitapYazar = 'Salih K�l�n�' where KitapYazar = 'Berhan Tan�z'

select * from Kitap5

select * from Guncelleme2


alter trigger Deneme7
on Kitap5
after update
as
begin
update Guncelleme3 set sayac = sayac * 2
end

update Kitap5 set KitapYay�nEvi = 'K��EGEN' where KitapYay�nEvi = 'ANAFARTALAR'

select * from Kitap5

select * from Guncelleme3


alter trigger g�ncellemesay�s�
on Kitap
after update
as
begin
declare @g�ncellemehakk� tinyint
select @g�ncellemehakk�=Sayac from Guncelleme7
if(@g�ncellemehakk�>=5)
begin
select 'G�ncelleme Hakk�n�z Bitmi�tir..'
end
else
begin
print 'Kalan G�ncelleme Hakk�n�z: ' +str(@g�ncellemehakk�)
update Guncelleme7 set Sayac += 1
end
end

select * from Guncelleme7 

update Kitap set KitapYay�nEvi = 'Sat�rn' where KitapRengi = 'kahverengi'

select * from Kitap