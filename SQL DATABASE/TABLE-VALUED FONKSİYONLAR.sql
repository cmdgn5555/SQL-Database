--TABLE-VALUED FONKSİYONLAR


create function kıyas(@gelendeger int)
returns table
as
return (select * from Kitap5 where KitapSayfa > @gelendeger)

select KitapAd, KitapYazar from dbo.kıyas(400)

select * from Kitap5


create function kıyas2(@kucukdeger int, @buyukdeger int)
returns table
as
return(select * from Kitap5 where KitapFiyat > @kucukdeger and KitapFiyat < @buyukdeger)

select KitapAd, KitapYazar from dbo.kıyas2(200, 300)

select * from Kitap5


alter function kıyas3(@ilkdeger varchar(20), @ikincideger varchar(20))
returns table
as
return(select * from Kitap5 where KitapYayınEvi in(@ilkdeger, @ikincideger))

select KitapAd, KitapYazar from dbo.kıyas3('KARELER', 'ALTILAR')

select * from Kitap5


create function kıyas4(@ilkdeger varchar(20), @ikincideger varchar(20), @ücüncüdeger varchar(20))
returns table
as
return(select * from Kitap5 where KitapYayınEvi not in(@ilkdeger, @ikincideger, @ücüncüdeger))

select KitapAd, KitapYazar from dbo.kıyas4('ANAFARTALAR', 'ALTILAR', 'ALTINTEPSİ')

select * from Kitap5


create function kıyas5(@gelentarih datetime)
returns table
as
return(select * from Kitap5 where KitapTarih > '2018-01-01')

select KitapAd, KitapYazar from dbo.kıyas5('2018-01-01')

select * from Kitap5


create function kıyas6(@ilktarih datetime, @sontarih datetime)
returns table
as
return(select * from Kitap5 where KitapTarih > '2017-04-01' and KitapTarih < '2017-10-01')

select KitapAd, KitapYazar, KitapTarih from dbo.kıyas6('2017-04-01', '2017-10-01')

select * from Kitap5