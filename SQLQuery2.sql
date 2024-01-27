--Yorum Satýrý
--Tablo Oluþturma
create database UrunKayit_DB
go--buraya kadar olan tüm komutlarý tamamladýktan sonra devam et
use UrunKayit_DB
go
create table Urunler
(
	UrunNo int identity(1,1),--identity sadece primary keylerde kullanýlýr,
	Isim nvarchar(50) not null,
	Fiyat decimal(18,2),
	Stok smallint,
	Kategori nvarchar(20),
	constraint pk_urun primary key(UrunNo)
)
--db kullanýmdayken silinemez
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