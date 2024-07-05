--TRIGGER KULLANIMI(UPDATE)


create trigger Deneme4
on Kitap5
after update
as
begin
select 'güncelleme iþlemi gerçekleþti..'
end

update Kitap5 set KitapFiyat = 175 where KitapYayýnEvi = 'DEMÝRBÝLEK'

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

update Kitap5 set KitapYazar = 'Salih Kýlýnç' where KitapYazar = 'Berhan Tanöz'

select * from Kitap5

select * from Guncelleme2


alter trigger Deneme7
on Kitap5
after update
as
begin
update Guncelleme3 set sayac = sayac * 2
end

update Kitap5 set KitapYayýnEvi = 'KÖÞEGEN' where KitapYayýnEvi = 'ANAFARTALAR'

select * from Kitap5

select * from Guncelleme3


alter trigger güncellemesayýsý
on Kitap
after update
as
begin
declare @güncellemehakký tinyint
select @güncellemehakký=Sayac from Guncelleme7
if(@güncellemehakký>=5)
begin
select 'Güncelleme Hakkýnýz Bitmiþtir..'
end
else
begin
print 'Kalan Güncelleme Hakkýnýz: ' +str(@güncellemehakký)
update Guncelleme7 set Sayac += 1
end
end

select * from Guncelleme7 

update Kitap set KitapYayýnEvi = 'Satürn' where KitapRengi = 'kahverengi'

select * from Kitap