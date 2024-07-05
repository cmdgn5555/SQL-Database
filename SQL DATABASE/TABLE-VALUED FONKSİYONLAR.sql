--TABLE-VALUED FONKS�YONLAR


create function k�yas(@gelendeger int)
returns table
as
return (select * from Kitap5 where KitapSayfa > @gelendeger)

select KitapAd, KitapYazar from dbo.k�yas(400)

select * from Kitap5


create function k�yas2(@kucukdeger int, @buyukdeger int)
returns table
as
return(select * from Kitap5 where KitapFiyat > @kucukdeger and KitapFiyat < @buyukdeger)

select KitapAd, KitapYazar from dbo.k�yas2(200, 300)

select * from Kitap5


alter function k�yas3(@ilkdeger varchar(20), @ikincideger varchar(20))
returns table
as
return(select * from Kitap5 where KitapYay�nEvi in(@ilkdeger, @ikincideger))

select KitapAd, KitapYazar from dbo.k�yas3('KARELER', 'ALTILAR')

select * from Kitap5


create function k�yas4(@ilkdeger varchar(20), @ikincideger varchar(20), @�c�nc�deger varchar(20))
returns table
as
return(select * from Kitap5 where KitapYay�nEvi not in(@ilkdeger, @ikincideger, @�c�nc�deger))

select KitapAd, KitapYazar from dbo.k�yas4('ANAFARTALAR', 'ALTILAR', 'ALTINTEPS�')

select * from Kitap5


create function k�yas5(@gelentarih datetime)
returns table
as
return(select * from Kitap5 where KitapTarih > '2018-01-01')

select KitapAd, KitapYazar from dbo.k�yas5('2018-01-01')

select * from Kitap5


create function k�yas6(@ilktarih datetime, @sontarih datetime)
returns table
as
return(select * from Kitap5 where KitapTarih > '2017-04-01' and KitapTarih < '2017-10-01')

select KitapAd, KitapYazar, KitapTarih from dbo.k�yas6('2017-04-01', '2017-10-01')

select * from Kitap5