--STORED PROCEDURE KULLANIMI


create procedure �rnek
as
select * from Kitap where KitapSayfa > 300

execute �rnek


alter procedure �rnek
as
select * from Kitap where KitapSayfa < 200

execute �rnek


create procedure kitapgetir
as
select Kitap.KitapAd, Kitap2.KitapRengi from Kitap inner join Kitap2
on
Kitap.KitapAd = Kitap2.KitapAd

execute kitapgetir

select * from Kitap
select * from Kitap2

drop procedure �rnek


select * from Kitap5
create procedure yay�nevigetir(@yay�nevi varchar(20))
as
select * from Kitap5 where KitapYay�nEvi = @yay�nevi

execute yay�nevigetir 'Anafartalar'


select * from Kitap3
create procedure kitapbilgigetir(@renk varchar(15))
as
select * from Kitap3 where KitapRengi = @renk

execute kitapbilgigetir 'turkuaz'


select * from Ki�iler
create procedure �ehirgetir(@�ehir varchar(15))
as
select * from Ki�iler where �ehir = @�ehir

execute �ehirgetir 'Bal�kesir'


select * from Ki�iler
create procedure meslekgetir(@meslek varchar(20))
as
select * from Ki�iler where Meslek = @meslek

execute meslekgetir 'Eczac�'