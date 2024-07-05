--CASE-WHEN KULLANIMI


Select KitapRengi, KitapBask�, KitapNo,
'Durum'=case KitapRengi
when 'mavi' then 'en kaliteli'
when 'turkuaz' then '�ok kaliteli'
when 'lacivert' then 'kaliteli'
when 'pembe' then 'orta kalite'
when 'siyah' then 'd���k kalite'
when 'sar�' then 'vasat'
end
from Kitap3


Select KitapAd, KitapYazar, KitapYay�nEvi,
'Durum'=case KitapYay�nEvi
when 'G�ne�' then '1.s�n�f kalite'
when 'Y�ld�z' then '2.s�n�f kalite'
when 'Merk�r' then '3.s�n�f kalite'
when 'J�piter' then '4.s�n�f kalite'
when 'Ay' then '5.s�n�f kalite'
when 'Ven�s' then '6.s�n�f kalite'
when 'MaviBulut' then '7.s�n�f kalite'
end
from Kitap


Select KitapAd, KitapYazar,
'Durum'=case KitapAd
when '�al�ku�u' then 'g�zel kitap'
when 'Notre Dame��n Kamburu' then 's�r�kleyici kitap'
when 'Son Ada' then 's�k�c� kitap'
when '�lahi Komedya' then 'efsane kitap'
when 'Siyah Lale' then 'vasat kitap'
else 'di�er kitaplar hakk�nda yorum yok'
end
from Kitap


Select KitapAd, KitapYazar,
'Durum'=case KitapYazar
when 'Shakespeare' then 'ingiliz'
when 'Mehmet Akif' then 't�rk'
when 'Tolstoy' then 'rus'
else 'di�er yazarlar hakk�nda yorum yok'
end
from Kitap


Select KitapAd, KitapYazar, KitapFiyat,
'Durum'=case 
when KitapFiyat >= 0 and KitapFiyat <=200 then 'ucuz kitap'
when KitapFiyat > 200 and KitapFiyat <=300 then 'pahal� kitap'
else 'a��r� pahal�'
end
from Kitap


Select KitapAd, KitapYazar, KitapSayfa,
'Durum'=case 
when KitapSayfa >= 0 and KitapSayfa <=300 then 'ince kitap'
when KitapSayfa > 300 and KitapSayfa <=600 then 'kal�n kitap'
else 'a��r� kal�n kitap'
end
from Kitap


Select KitapRengi, KitapBask�, KitapNo,
'Durum'=case 
when KitapBask� > 25 then 'bask� say�s� ideal'
when KitapBask� <= 25 then 'bask� say�s� d���k'
end
from Kitap3