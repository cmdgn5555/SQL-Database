--DECLARE KULLANIMI


declare @þehir varchar(15)
declare @ilçe varchar(15)
declare @semt varchar(15)
declare @mahalle varchar(15)
declare @sokak varchar(15)

set @þehir = 'ankara'
set @ilçe = 'çankaya'
set @semt = 'akpýnar'
set @mahalle = 'çamlýtepe'
set @sokak = 'havuzlar'

print @þehir + '/' + @ilçe + '/' + @semt + '/' + @mahalle + '/' + @sokak


declare @ülke varchar(15)
declare @kulüp varchar(20)
declare @renk varchar(15)
declare @piyasa_deðeri varchar(15)

set @ülke = 'ingiltere'
set @kulüp = 'manchester united'
set @renk = 'kýrmýzý'
set @piyasa_deðeri = '900000000'

print @ülke + '-' + @kulüp + '-' + @renk + '-' + @piyasa_deðeri