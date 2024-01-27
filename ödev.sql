Create database gamelap_db
go
use gamelap_db
go
create table kategori
(
	id int identity(1,1),
	Kategori_isim nvarchar(50)not null,
	constraint pk_kategori primary key (id),
)
go
create table Yayinci
(
	id int identity(1,1),
	yayinci_sirket nvarchar(100)not null,
	constraint pk_yayinci primary key(id)
)
go
create table oyun
(
	id int identity(1,1),
	isim nvarchar (75)not null,
	kategori_id int,
	yayinci_id int,
	fiyat decimal,
	constraint pk_oyun primary key(id),
	constraint fk_oyun foreign key (kategori_id) references kategori(id),
	constraint fk_oyunyayinci foreign key (yayinci_id) references Yayinci(id),
)
go
create table inceleme
(
	oyun_id int not null,
	metacritic_puaný int,
	Oyuncu_degerlendirmesi decimal not null,
	constraint fk_inceleme foreign key(oyun_id) references  oyun(id),
)
