--DECLARE KULLANIMI


declare @�ehir varchar(15)
declare @il�e varchar(15)
declare @semt varchar(15)
declare @mahalle varchar(15)
declare @sokak varchar(15)

set @�ehir = 'ankara'
set @il�e = '�ankaya'
set @semt = 'akp�nar'
set @mahalle = '�aml�tepe'
set @sokak = 'havuzlar'

print @�ehir + '/' + @il�e + '/' + @semt + '/' + @mahalle + '/' + @sokak


declare @�lke varchar(15)
declare @kul�p varchar(20)
declare @renk varchar(15)
declare @piyasa_de�eri varchar(15)

set @�lke = 'ingiltere'
set @kul�p = 'manchester united'
set @renk = 'k�rm�z�'
set @piyasa_de�eri = '900000000'

print @�lke + '-' + @kul�p + '-' + @renk + '-' + @piyasa_de�eri