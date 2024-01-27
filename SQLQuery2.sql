--Yorum Sat�r�
--Tablo Olu�turma
create database UrunKayit_DB
go--buraya kadar olan t�m komutlar� tamamlad�ktan sonra devam et
use UrunKayit_DB
go
create table Urunler
(
	UrunNo int identity(1,1),--identity sadece primary keylerde kullan�l�r,
	Isim nvarchar(50) not null,
	Fiyat decimal(18,2),
	Stok smallint,
	Kategori nvarchar(20),
	constraint pk_urun primary key(UrunNo)
)
--db kullan�mdayken silinemez
--     SQL                 C#
--nvarchar(50)           string
--varchar(50)            string
--nvarchar(max)		     string
--ntext(nvarchar(max))   string
--money					 decimal	   12,0000
--decimal(18,2)			 decimal       12,00	
--tinyint				 byte
--smallint				 short
--int					 int
--bigint				 long