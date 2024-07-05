--CONSTRAINT KULLANIMI


CREATE DATABASE Okul

CREATE TABLE ogrenci(

ogr_no int not null primary key,

ogr_adi varchar(15),

ogr_soyadi varchar(20),

ogr_adres varchar(10),

ogr_sinif varchar(2),

ogr_ilce varchar(20) default 'göztepe',

ogr_il varchar(15) default 'izmir',

ogr_sinav1 tinyint check(ogr_sinav1 >= 0 and ogr_sinav1 <= 100),

ogr_sinav2 int,

constraint kontrol check(ogr_sinav2 >= 10 and ogr_sinav2 <= 50),

ogr_kolu varchar(20),

constraint kontrol2 check(ogr_kolu in ('saðlýk', 'çevre', 'trafik')),

ogr_hobiler varchar(20),

constraint kontrol3 check(ogr_hobiler in ('yüzme', 'film', 'futbol')),

ogr_fobiler varchar(20),

constraint kontrol4 check(ogr_fobiler in ('diþçi', 'kapalý alan', 'uçak'))

)