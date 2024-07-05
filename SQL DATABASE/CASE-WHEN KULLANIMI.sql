--CASE-WHEN KULLANIMI


Select KitapRengi, KitapBaskı, KitapNo,
'Durum'=case KitapRengi
when 'mavi' then 'en kaliteli'
when 'turkuaz' then 'çok kaliteli'
when 'lacivert' then 'kaliteli'
when 'pembe' then 'orta kalite'
when 'siyah' then 'düşük kalite'
when 'sarı' then 'vasat'
end
from Kitap3


Select KitapAd, KitapYazar, KitapYayınEvi,
'Durum'=case KitapYayınEvi
when 'Güneş' then '1.sınıf kalite'
when 'Yıldız' then '2.sınıf kalite'
when 'Merkür' then '3.sınıf kalite'
when 'Jüpiter' then '4.sınıf kalite'
when 'Ay' then '5.sınıf kalite'
when 'Venüs' then '6.sınıf kalite'
when 'MaviBulut' then '7.sınıf kalite'
end
from Kitap


Select KitapAd, KitapYazar,
'Durum'=case KitapAd
when 'Çalıkuşu' then 'güzel kitap'
when 'Notre Dame’ın Kamburu' then 'sürükleyici kitap'
when 'Son Ada' then 'sıkıcı kitap'
when 'İlahi Komedya' then 'efsane kitap'
when 'Siyah Lale' then 'vasat kitap'
else 'diğer kitaplar hakkında yorum yok'
end
from Kitap


Select KitapAd, KitapYazar,
'Durum'=case KitapYazar
when 'Shakespeare' then 'ingiliz'
when 'Mehmet Akif' then 'türk'
when 'Tolstoy' then 'rus'
else 'diğer yazarlar hakkında yorum yok'
end
from Kitap


Select KitapAd, KitapYazar, KitapFiyat,
'Durum'=case 
when KitapFiyat >= 0 and KitapFiyat <=200 then 'ucuz kitap'
when KitapFiyat > 200 and KitapFiyat <=300 then 'pahalı kitap'
else 'aşırı pahalı'
end
from Kitap


Select KitapAd, KitapYazar, KitapSayfa,
'Durum'=case 
when KitapSayfa >= 0 and KitapSayfa <=300 then 'ince kitap'
when KitapSayfa > 300 and KitapSayfa <=600 then 'kalın kitap'
else 'aşırı kalın kitap'
end
from Kitap


Select KitapRengi, KitapBaskı, KitapNo,
'Durum'=case 
when KitapBaskı > 25 then 'baskı sayısı ideal'
when KitapBaskı <= 25 then 'baskı sayısı düşük'
end
from Kitap3