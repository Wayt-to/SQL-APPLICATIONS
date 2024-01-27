create database Kitapligim_db
go
use Kitapligim_db
go
create table kategoriler
 (
	id int identity(1,1),
	Isim nvarchar(50) not null,
	Aciklama ntext,
	Constraint pk_kategoriler primary key(id),
 )
 GO
 create table yayinevi
 (
	id int identity(1,1),
	Isim nvarchar(50) not null,
	TicariUnvan nvarchar(500),
	Yetkili nvarchar(150),
	Telno nvarchar(11),
	constraint pk_yayinevi primary key(id),
 )
 go
 create table kitaplar
 (
	id int identity(1451,1),
	Kategori_ID int,
	Yayinevi_ID int,
	Isim nvarchar(50) not null,
	SayfaSayisi smallint,
	constraint pk_kitap primary key(id),
	constraint fk_kitaplarkategoriler foreign key(Kategori_ID) references Kategoriler(id),
	constraint fk_kitaplarYayinevi foreign key(Yayinevi_ID) references yayinevi(id),
 )
 go
 create table yazarlar
 (
	id int identity(1,1),
	isim nvarchar(75),
	soyisim nvarchar(75),
	constraint pk_yazar primary key(id),
 )
 go
 create table kitapyazarlari
 (
	kitap_id int,
	yazar_id int,
	constraint pk_kitapyazarlari primary key(kitap_id,yazar_id),
	constraint fk_kitapyazarlarikitap foreign key(kitap_id) references kitaplar(id),
	constraint fk_kitapyazarlariyazar foreign key(yazar_id) references yazarlar(id),

 )