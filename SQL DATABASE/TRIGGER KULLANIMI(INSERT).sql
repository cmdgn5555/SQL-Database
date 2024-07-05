
--TRIGGER KULLANIMI(INSERT)


create trigger Deneme
on Kitap5
after insert
as
begin
select 'yeni bir kitap kaydý yapýldý'
end

insert into Kitap5 values(12, 'Çoban', 'Necdet Elmas', 535, 320, '2018-11-22', 'MEMBA')

select * from Kitap5


create trigger Deneme2
on Kitap5
after insert
as
begin
select KitapAd, KitapYazar, KitapFiyat = KitapFiyat + 500 from Kitap5
where KitapFiyat < 200
end

insert into Kitap5 values(13, 'Çocuklar', 'Alaattin Þeker', 425, 240, '2018-11-25', 'DEMÝRBÝLEK')

select * from Kitap5


create trigger Deneme3
on Kitap5
after insert
as
begin
select KitapAd, KitapYazar, KitapYayýnEvi, KitapSayfa = KitapSayfa + 700 from Kitap5
where KitapSayfa < 0
end

insert into Kitap5 values(14, 'Dikenli Yol', 'Muzaffer Esen', 335, 365, '2018-12-14', 'CUMHUR')

select * from Kitap5


alter trigger maximumekleme
on Kitap6
after insert
as
begin
declare @eklemehakký tinyint
select @eklemehakký=Sayac from Guncelleme6
if(@eklemehakký>=10)
begin
select 'Ekleme Hakkýnýz Bitmiþtir..'
end
else
begin
print 'Kalan Ekleme Hakkýnýz: ' +str(@eklemehakký)
update Guncelleme6 set Sayac += 1
end
end


select * from Guncelleme6 

insert into Kitap6 values(1, 'Dikenli Yol', 'Muzaffer Esen', 335, 365, '2018-12-14', 'CUMHUR')

select * from Kitap6