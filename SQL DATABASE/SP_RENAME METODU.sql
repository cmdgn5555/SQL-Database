--SP_RENAME METODU


SP_RENAME 'Kitap', 'Book' 

SELECT * FROM Book

SP_RENAME 'Book', 'Kitap'

SELECT * FROM Kitap

SP_RENAME 'Kitap.KitapAd', 'BookName', 'Column'

SP_RENAME 'Kitap.KitapYazar', 'BookAuthor', 'Column'

SP_RENAME 'Kitap.KitapSayfa', 'BookPage', 'Column'

SP_RENAME 'Kitap.KitapFiyat', 'BookPrice', 'Column'

SP_RENAME 'Kitap.BookName', 'KitapAd', 'Column'

SP_RENAME 'Kitap.BookAuthor', 'KitapYazar', 'Column' 

SP_RENAME 'Kitap.BookPage', 'KitapSayfa', 'Column'

SP_RENAME 'Kitap.BookPrice', 'KitapFiyat', 'Column'