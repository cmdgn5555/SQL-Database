--SCALAR-VALUED FONKS�YONLAR


create function buyukharf(@gelendeger varchar(10))
returns varchar(10)
as
begin
return upper(@gelendeger)
end

select KitapRengi from Kitap
select dbo.buyukharf(KitapRengi) as b�y�krenk from Kitap


create function kucukharf(@gelendeger varchar(15))
returns varchar(15)
as
begin
return lower(@gelendeger)
end

select KitapYay�nEvi from Kitap5
select dbo.kucukharf(KitapYay�nEvi) as k���kharf from Kitap5


alter function ilkharfbuyuk(@gelendeger varchar(15))
returns varchar(15)
as
begin
return concat(upper(substring(@gelendeger, 1, 1)), substring(@gelendeger, 2, len(@gelendeger)))
end


select KitapRengi from Kitap3
select dbo.ilkharfbuyuk(KitapRengi) as �lkharfib�y�k from Kitap3


create function terscevir(@gelendeger varchar(15))
returns varchar(15)
as
begin
return reverse(@gelendeger)
end

select KitapRengi from Kitap3
select dbo.terscevir(KitapRengi) as ters from Kitap3


create function kayitsayisi(@gelenrenk as varchar(15))
returns int
as
begin
declare @sayi int
select @sayi = count(KitapRengi) from Kitap2 where KitapRengi = @gelenrenk
return @sayi
end

select KitapRengi from Kitap2
select dbo.kayitsayisi('beyaz') as renklerin_adetleri


create function kayitsayisi2(@gelenyay�nevi as varchar(20))
returns int
as
begin
declare @sayi int
select @sayi = count(KitapYay�nEvi) from Kitap2 where KitapYay�nEvi = @gelenyay�nevi
return @sayi
end

select KitapYay�nEvi from Kitap2
select dbo.kayitsayisi2('joker') as yay�nevlerinin_adetleri


create function kayitsayisi3(@gelen�ehir as varchar(15))
returns int
as
begin
declare @sayi int
select @sayi = sum(Maa�) from Ki�iler where �ehir = @gelen�ehir
return @sayi
end

select * from Ki�iler
select dbo.kayitsayisi3('bursa') as �ehirlere_g�re_maa�_toplamlar�


alter function kayitsayisi4 (@gelenmeslek as varchar(15))
returns varchar(100)
as
begin
declare @b�y�k varchar(100)
set @b�y�k = ''
select @b�y�k = @b�y�k + upper(Ad) + ' ' from Ki�iler where Meslek = @gelenmeslek
return @b�y�k
end

select * from Ki�iler
select dbo.kayitsayisi4('��retmen') as mesleklere_g�re_adlar�_b�y�k_harfe_�evir


alter function kayitsayisi5(@gelenkitapad as varchar(15))
returns varchar(50)
as
begin
declare @k���k varchar(50)
set @k���k = ''
select @k���k = @k���k + lower(KitapYay�nEvi) + ' ' from Kitap5 where KitapAd = @gelenkitapad
return @k���k
end

select * from Kitap5
select dbo.kayitsayisi5('d��k�nler') as kitap_ad�na_g�re_kitap_yay�n_evlerini_k���k_harfe_�evir


alter function kayitsayisi6(@gelenkitapad as varchar(15))
returns float
as
begin
declare @karek�k� float
select @karek�k� = avg(KitapSayfa) from Kitap5 where KitapAd = @gelenkitapad
return @karek�k�
end

select * from Kitap5
select dbo.kayitsayisi6('arkada�') as kitap_ad�na_g�re_ortalama


alter FUNCTION kayitsayisi7(@gelenkitapyay�nevi AS VARCHAR(15))
RETURNS INT
AS
BEGIN
DECLARE @mutlakdeger INT;
    
SELECT @mutlakdeger = abs(KitapFiyat) FROM Kitap5 WHERE KitapYay�nEvi = @gelenkitapyay�nevi;
    
    RETURN @mutlakdeger;
END;

select * from Kitap5
select dbo.kayitsayisi7('alt�ntepsi') as kitap_ad�na_g�re_ortalama



create function kayitsayisi8(@gelendeger varchar(20))
returns int
as
begin
declare @SONU� int
select @SONU� = ABS(KitapSayfa) from Kitap5 where KitapYay�nEvi = @gelendeger
return @SONU�
end

select * from Kitap5
select dbo.kayitsayisi8('alt�ntepsi') as kitap_yay�n_evine_g�re_mutlak_deger