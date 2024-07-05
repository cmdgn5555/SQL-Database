--TABLO TÝPÝ DEÐÝÞKENLER


declare @ogrenciler table(
ogrno varchar(3),
ograd varchar(20),
ogrsoyad varchar(30),
ogrkolu varchar(30),
ogrmemleket varchar(50)
)

insert into @ogrenciler values('A18', 'Selim', 'Karan', 'Saðlýk', 'Sivas')
insert into @ogrenciler values('B16', 'Kemal', 'Duran', 'Çevre', 'Manisa')
insert into @ogrenciler values('C13', 'Ali', 'Kartal', 'Trafik', 'Hatay')

select * from @ogrenciler order by ogrno desc


declare @sporcular table(
sporcuad varchar(20),
sporcusoyad varchar(20),
sporcuyaþ tinyint,
sporcuboy tinyint,
sporcukilo tinyint
)

insert into @sporcular values('Vedat', 'Yýldýrým', 22, 193, 85)
insert into @sporcular values('Yasin', 'Bektaþ', 24, 188, 77)
insert into @sporcular values('Murat', 'Ay', 28, 183, 73)


select * from @sporcular order by sporcuad desc

delete from @sporcular where sporcuad = 'Vedat'

select * from @sporcular order by sporcuad desc

update @sporcular set sporcuad = 'Cihan' where sporcuad = 'Murat'