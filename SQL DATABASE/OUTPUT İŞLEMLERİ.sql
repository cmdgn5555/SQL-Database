--OUTPUT ��LEMLER�


declare @yeni table(
renk varchar(10),
bask� tinyint,
numara varchar(1)
)

insert into Kitap3
output inserted.KitapRengi, inserted.KitapBask�, inserted.KitapNo
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
yay�nevi varchar(20)
)

insert into Kitap5
output inserted.KitapNo, inserted.KitapAd, inserted.KitapYazar, inserted.KitapSayfa, inserted.KitapFiyat, inserted.KitapTarih, inserted.KitapYay�nEvi
into @yeni2
values(7, 'D��k�nler', 'Burak Y�ld�r�m', 550, 333, '2017-11-26', 'D�rtler')

select * from @yeni2

select * from Kitap5


declare @yeni3 table(
product�d tinyint,
productname varchar(20),
productprice int,
category�d tinyint
)

insert into �r�nler
output inserted.�r�nId, inserted.�r�nAd, inserted.�r�nFiyat, inserted.KategoriId
into @yeni3
values(5, '�t� masas�',  259, 100)

select * from @yeni3

select * from �r�nler



declare @silinen table(
Bookcolor varchar(20),
Bookprint tinyint,
Booknumber tinyint
)

delete from Kitap3
output deleted.KitapRengi, deleted.KitapBask�, deleted.KitapNo
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
deleted.KitapYay�nEvi
into @silinen2
where KitapYay�nEvi = 'Cumhur'

select * from @silinen2

select * from Kitap4


declare @silinen3 table(
Productid tinyint,
Productname varchar(30),
Productprice int,
Categoryid tinyint
)

delete from �r�nler
output deleted.�r�nId, deleted.�r�nAd, deleted.�r�nFiyat, deleted.KategoriId
into @silinen3
where �r�nFiyat < 300

select * from @silinen3

select * from �r�nler


declare @silinen4 table(
Personnumber tinyint,
Personname varchar(15),
Personsurname varchar(15),
Personprofession varchar(15),
Personcity varchar(15),
Personsalary int

)

delete from Ki�iler
output 
deleted.Ki�iNo, 
deleted.Ad, 
deleted.Soyad, 
deleted.Meslek, 
deleted.�ehir, 
deleted.Maa�
into @silinen4
where Maa� > 4750

select * from @silinen4

select * from Ki�iler