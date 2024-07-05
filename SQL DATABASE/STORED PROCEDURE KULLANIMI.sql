--STORED PROCEDURE KULLANIMI


create procedure örnek
as
select * from Kitap where KitapSayfa > 300

execute örnek


alter procedure örnek
as
select * from Kitap where KitapSayfa < 200

execute örnek


create procedure kitapgetir
as
select Kitap.KitapAd, Kitap2.KitapRengi from Kitap inner join Kitap2
on
Kitap.KitapAd = Kitap2.KitapAd

execute kitapgetir

select * from Kitap
select * from Kitap2

drop procedure örnek


select * from Kitap5
create procedure yayýnevigetir(@yayýnevi varchar(20))
as
select * from Kitap5 where KitapYayýnEvi = @yayýnevi

execute yayýnevigetir 'Anafartalar'


select * from Kitap3
create procedure kitapbilgigetir(@renk varchar(15))
as
select * from Kitap3 where KitapRengi = @renk

execute kitapbilgigetir 'turkuaz'


select * from Kiþiler
create procedure þehirgetir(@þehir varchar(15))
as
select * from Kiþiler where Þehir = @þehir

execute þehirgetir 'Balýkesir'


select * from Kiþiler
create procedure meslekgetir(@meslek varchar(20))
as
select * from Kiþiler where Meslek = @meslek

execute meslekgetir 'Eczacý'