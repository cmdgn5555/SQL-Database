--IF-ELSE KULLANIMI


declare @City_number tinyint
select @City_number=COUNT(�ehir) from Ki�iler
if (@City_number > 25)
begin
print 'yeterli say�da �ehir vard�r... �ehir say�s� : ' + cast(@City_number as varchar(3))
end
else
begin
print 'yeterli say�da �ehir yoktur... �ehir say�s� : ' + cast(@City_number as varchar(3))
end


declare @Profession varchar(20)
select @Profession=count(Meslek) from Ki�iler where Meslek like 'M%'
if (@Profession > 5)
begin
print 'm harfi ile ba�layan meslek say�s� 5 ten fazlad�r...' + @Profession + ' adet m ile ba�layan meslek vard�r...'
end
else
begin
print 'm harfi ile ba�layan meslek say�s� 5 ten azd�r...' + @Profession + ' adet m ile ba�layan meslek vard�r...'
end


declare @Salary_number int
select @Salary_number=count(Maa�) from Ki�iler where Maa� between 3000 and 4000
if (@Salary_number > 10)
begin
print 'maa��n 3000 ile 4000 aras�nda oldu�u kay�t say�s� 10 dan b�y�kt�r... say� : ' + cast(@Salary_number as varchar(5))
end
else
begin
print 'maa��n 3000 ile 4000 aras�nda oldu�u kay�t say�s� 10 dan k���kt�r... say� : ' + cast(@Salary_number as varchar(5))
end


declare @Surname_number tinyint
select @Surname_number=count(Soyad) from Ki�iler where Soyad like '%z'
if (@Surname_number = 3)
begin
print 'soyad� z ile biten kay�t say�s� 3 t�r...soyad� z ile biten kay�t say�s� : ' + cast(@Surname_number as varchar(1))
end
else
begin
print 'soyad� z ile biten kay�t say�s� 3 den farkl�d�r...soyad� z ile biten kay�t say�s� : ' + cast(@Surname_number as varchar(1))
end


declare @Ayl�k_maa� int
select @Ayl�k_maa�=count(Maa�) from Ki�iler where Maa� >= 3000 and Maa� <= 4000
if(@Ayl�k_maa� < 5)
begin
print 'maa�� 3000-4000 aras� olan kay�t say�s� d���k ' + cast(@Ayl�k_maa� as varchar(5))
end
else if (@Ayl�k_maa� >= 5 and @Ayl�k_maa� <=8)
begin
print 'maa�� 3000-4000 aras� olan kay�t say�s� ideal ' + cast(@Ayl�k_maa� as varchar(5))
end
else
begin
print 'maa�� 3000-4000 aras� olan kay�t say�s� y�ksek ' + cast(@Ayl�k_maa� as varchar(5))
end


declare @Ayl�k_maa�2 int
select @Ayl�k_maa�2=count(�ehir) from Ki�iler where �ehir in ('Bursa', 'Bal�kesir')
if(@Ayl�k_maa�2 < 5)
begin
print '�ehir ismi bursa yada bal�kesir olan kay�t say�s� d���k ' + cast(@Ayl�k_maa�2 as varchar(5))
end
else if (@Ayl�k_maa�2 >= 5 and @Ayl�k_maa�2 <=10)
begin
print '�ehir ismi bursa yada bal�kesir olan kay�t say�s� ideal ' + cast(@Ayl�k_maa�2 as varchar(5))
end
else
begin
print '�ehir ismi bursa yada bal�kesir olan kay�t say�s� y�ksek ' + cast(@Ayl�k_maa�2 as varchar(5))
end


declare @�ehri int
select @�ehri=count(�ehir) from Ki�iler where Meslek in ('��retmen', 'Oyuncu', 'M�hendis')
if(@�ehri < 10)
begin
print 'mesle�i ��retmen, oyuncu yada m�hendis olan kay�t say�s� d���k ' + cast(@�ehri as varchar(5))
end
else if (@�ehri >= 10 and @�ehri <=20)
begin
print 'mesle�i ��retmen, oyuncu yada m�hendis olan kay�t say�s� ideal ' + cast(@�ehri as varchar(5))
end
else
begin
print 'mesle�i ��retmen, oyuncu yada m�hendis olan kay�t say�s� y�ksek ' + cast(@�ehri as varchar(5))
end