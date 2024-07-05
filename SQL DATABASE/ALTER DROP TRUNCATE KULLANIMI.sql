--ALTER DROP TRUNCATE KULLANIMI


SELECT * FROM ogrenci

ALTER TABLE ogrenci add ogr_devamsizlik tinyint, ogr_kayit_tarih smalldatetime, ogr_borc int

ALTER TABLE ogrenci add check(ogr_devamsizlik <= 20)

ALTER TABLE ogrenci add check(ogr_sinif >= 9 and ogr_sinif <= 12)

ALTER TABLE ogrenci add check(ogr_borc > 5000 and ogr_borc < 6000)

ALTER TABLE ogrenci ALTER COLUMN ogr_adres varchar(20)

ALTER TABLE ogrenci ALTER COLUMN ogr_adi varchar(5)

ALTER TABLE ogrenci ALTER COLUMN ogr_soyadi varchar(25)

ALTER TABLE ogrenci DROP COLUMN ogr_adi

ALTER TABLE ogrenci DROP COLUMN ogr_soyadi

ALTER TABLE ogrenci DROP COLUMN ogr_sinif

TRUNCATE TABLE ogrenci

DROP TABLE ogrenci