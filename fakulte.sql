create database Universite_db
go
use Universite_db
go
create table fakulte
(
	id int identity(1,1),
	isim nvarchar(150)not null,
	dekan nvarchar(150),
	constraint pk_fakulte primary key(id),
)
go
create table bolum
(
	id int identity(1,1),
	fakulte_id int,
	isim nvarchar(150)not null,
	constraint pk_bolum primary key(id),
	constraint fk_bolumfakulte foreign key(fakulte_id) references fakulte(id),
)
go
create table ders
(
	kod int identity(100,1),
	bolum_id int,
	isim nvarchar(100),
	kredi smallmoney,
	saat tinyint,
	constraint pk_ders primary key(kod),
	constraint fk_dersbolum foreign key(bolum_id) references bolum(id),
)
go
create table ogrenci
(
	OgrenciNo nvarchar(12),
	isim nvarchar(75),
	soyad nvarchar(75),
	babaAdi nvarchar(75),
	bolumid int,
	constraint pk_ogrenci primary key(OgrenciNo),
	constraint fk_ogrencibolum foreign key(bolumid) references bolum(id),
)
go 
create table alinanDers
(
	ogrenciNo nvarchar(12),
	dersKodu int,
	constraint pk_alinanDers primary key(ogrenciNo,dersKodu),
	constraint fk_alinanDersogrencino foreign key(ogrenciNo) references ogrenci(OgrenciNo),
	constraint fk_alinanDersKodu foreign key(dersKodu) references ders(kod),
)