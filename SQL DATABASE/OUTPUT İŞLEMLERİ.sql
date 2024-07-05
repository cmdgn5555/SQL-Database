--OUTPUT ÝÞLEMLERÝ


declare @yeni table(
renk varchar(10),
baský tinyint,
numara varchar(1)
)

insert into Kitap3
output inserted.KitapRengi, inserted.KitapBaský, inserted.KitapNo
into @yeni
values('lacivert', 20, 5)

select * from @yeni

select * from Kitap3


declare @yeni2 table(
numara tinyint,
ad varchar(20),
yazar varchar(20),
sayfa int,
fiyat int,
tarih datetime,
yayýnevi varchar(20)
)

insert into Kitap5
output inserted.KitapNo, inserted.KitapAd, inserted.KitapYazar, inserted.KitapSayfa, inserted.KitapFiyat, inserted.KitapTarih, inserted.KitapYayýnEvi
into @yeni2
values(7, 'Düþkünler', 'Burak Yýldýrým', 550, 333, '2017-11-26', 'Dörtler')

select * from @yeni2

select * from Kitap5


declare @yeni3 table(
productýd tinyint,
productname varchar(20),
productprice int,
categoryýd tinyint
)

insert into Ürünler
output inserted.ÜrünId, inserted.ÜrünAd, inserted.ÜrünFiyat, inserted.KategoriId
into @yeni3
values(5, 'ütü masasý',  259, 100)

select * from @yeni3

select * from Ürünler



declare @silinen table(
Bookcolor varchar(20),
Bookprint tinyint,
Booknumber tinyint
)

delete from Kitap3
output deleted.KitapRengi, deleted.KitapBaský, deleted.KitapNo
into @silinen
where KitapRengi = 'lacivert'

select * from @silinen

select * from Kitap3


declare @silinen2 table(
Booknumber tinyint,
Bookname varchar(20),
BookAuthor varchar(20),
Bookpage int,
Bookprice int,
Bookdate datetime,
Bookpublishinghouse varchar(20)
)

delete from Kitap4
output 
deleted.KitapNo, 
deleted.KitapAd, 
deleted.KitapYazar, 
deleted.KitapSayfa,
deleted.KitapFiyat,
deleted.KitapTarih,
deleted.KitapYayýnEvi
into @silinen2
where KitapYayýnEvi = 'Cumhur'

select * from @silinen2

select * from Kitap4


declare @silinen3 table(
Productid tinyint,
Productname varchar(30),
Productprice int,
Categoryid tinyint
)

delete from Ürünler
output deleted.ÜrünId, deleted.ÜrünAd, deleted.ÜrünFiyat, deleted.KategoriId
into @silinen3
where ÜrünFiyat < 300

select * from @silinen3

select * from Ürünler


declare @silinen4 table(
Personnumber tinyint,
Personname varchar(15),
Personsurname varchar(15),
Personprofession varchar(15),
Personcity varchar(15),
Personsalary int

)

delete from Kiþiler
output 
deleted.KiþiNo, 
deleted.Ad, 
deleted.Soyad, 
deleted.Meslek, 
deleted.Þehir, 
deleted.Maaþ
into @silinen4
where Maaþ > 4750

select * from @silinen4

select * from Kiþiler