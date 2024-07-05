--SCALAR-VALUED FONKSÝYONLAR


create function buyukharf(@gelendeger varchar(10))
returns varchar(10)
as
begin
return upper(@gelendeger)
end

select KitapRengi from Kitap
select dbo.buyukharf(KitapRengi) as büyükrenk from Kitap


create function kucukharf(@gelendeger varchar(15))
returns varchar(15)
as
begin
return lower(@gelendeger)
end

select KitapYayýnEvi from Kitap5
select dbo.kucukharf(KitapYayýnEvi) as küçükharf from Kitap5


alter function ilkharfbuyuk(@gelendeger varchar(15))
returns varchar(15)
as
begin
return concat(upper(substring(@gelendeger, 1, 1)), substring(@gelendeger, 2, len(@gelendeger)))
end


select KitapRengi from Kitap3
select dbo.ilkharfbuyuk(KitapRengi) as Ýlkharfibüyük from Kitap3


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


create function kayitsayisi2(@gelenyayýnevi as varchar(20))
returns int
as
begin
declare @sayi int
select @sayi = count(KitapYayýnEvi) from Kitap2 where KitapYayýnEvi = @gelenyayýnevi
return @sayi
end

select KitapYayýnEvi from Kitap2
select dbo.kayitsayisi2('joker') as yayýnevlerinin_adetleri


create function kayitsayisi3(@gelenþehir as varchar(15))
returns int
as
begin
declare @sayi int
select @sayi = sum(Maaþ) from Kiþiler where Þehir = @gelenþehir
return @sayi
end

select * from Kiþiler
select dbo.kayitsayisi3('bursa') as þehirlere_göre_maaþ_toplamlarý


alter function kayitsayisi4 (@gelenmeslek as varchar(15))
returns varchar(100)
as
begin
declare @büyük varchar(100)
set @büyük = ''
select @büyük = @büyük + upper(Ad) + ' ' from Kiþiler where Meslek = @gelenmeslek
return @büyük
end

select * from Kiþiler
select dbo.kayitsayisi4('öðretmen') as mesleklere_göre_adlarý_büyük_harfe_çevir


alter function kayitsayisi5(@gelenkitapad as varchar(15))
returns varchar(50)
as
begin
declare @küçük varchar(50)
set @küçük = ''
select @küçük = @küçük + lower(KitapYayýnEvi) + ' ' from Kitap5 where KitapAd = @gelenkitapad
return @küçük
end

select * from Kitap5
select dbo.kayitsayisi5('düþkünler') as kitap_adýna_göre_kitap_yayýn_evlerini_küçük_harfe_çevir


alter function kayitsayisi6(@gelenkitapad as varchar(15))
returns float
as
begin
declare @karekökü float
select @karekökü = avg(KitapSayfa) from Kitap5 where KitapAd = @gelenkitapad
return @karekökü
end

select * from Kitap5
select dbo.kayitsayisi6('arkadaþ') as kitap_adýna_göre_ortalama


alter FUNCTION kayitsayisi7(@gelenkitapyayýnevi AS VARCHAR(15))
RETURNS INT
AS
BEGIN
DECLARE @mutlakdeger INT;
    
SELECT @mutlakdeger = abs(KitapFiyat) FROM Kitap5 WHERE KitapYayýnEvi = @gelenkitapyayýnevi;
    
    RETURN @mutlakdeger;
END;

select * from Kitap5
select dbo.kayitsayisi7('altýntepsi') as kitap_adýna_göre_ortalama



create function kayitsayisi8(@gelendeger varchar(20))
returns int
as
begin
declare @SONUÇ int
select @SONUÇ = ABS(KitapSayfa) from Kitap5 where KitapYayýnEvi = @gelendeger
return @SONUÇ
end

select * from Kitap5
select dbo.kayitsayisi8('altýntepsi') as kitap_yayýn_evine_göre_mutlak_deger