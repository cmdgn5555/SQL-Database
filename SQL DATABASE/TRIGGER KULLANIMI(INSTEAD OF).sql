--TRIGGER KULLANIMI(INSTEAD OF)


create trigger insdeneme
on Kitap5
instead of insert
as
begin
select 'ekleme i�lemi yap�labilir!!'
end

insert into Kitap5 values(14, 'Arka Sokak', 'Rag�p Ero�lu', 440, 420, '2018-12-28', 'BAYLAR')

select * from Kitap5


create trigger upddeneme
on Kitap5
instead of update
as
begin
select 'g�ncelleme i�lemi yap�labilir!!'
end

update Kitap5 set KitapYazar = 'Nurettin Eser' where KitapYazar = 'Muzaffer Esen'


alter trigger deldeneme
on Kitap5
instead of delete
as
begin
select 'silme i�lemi yap�labilir!!'
end

delete from Kitap5 where KitapAd = 'Ger�ekler'