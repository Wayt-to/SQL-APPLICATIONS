--insert into kategori(Kategori_isim) values ('Korku')
insert into kategori(Kategori_isim) values ('Aksiyon')
insert into kategori(Kategori_isim) values ('Spor')
insert into kategori(Kategori_isim) values ('Puzzle')
insert into kategori(Kategori_isim) values ('Rekabet�i')
insert into kategori(Kategori_isim) values ('Hentai')

insert into oyun(isim,kategori_id) values('Counter Strike 2',5)
insert into oyun(isim,kategori_id) values('Outlast',1)
insert into oyun(isim,kategori_id) values('Dont Starve Together',1)
insert into oyun(isim,kategori_id) values('Valorant',5)
insert into oyun(isim,kategori_id) values('World of Warships',5)
insert into oyun(isim,kategori_id) values('Borderlands',2)
insert into oyun(isim,kategori_id) values('Hentai Girl Linda',6)
insert into oyun(isim,kategori_id) values('Portal',4)
insert into oyun(isim,kategori_id) values('Fifa 2022',3)

insert into yayinci(oyun_id,yayinci_sirket) values(1,'Valve')
insert into yayinci(oyun_id,yayinci_sirket) values(2,'Tridant Games')
insert into yayinci(oyun_id,yayinci_sirket) values(3,'Tencent Games')
insert into yayinci(oyun_id,yayinci_sirket) values(4,'Riot Games')
insert into yayinci(oyun_id,yayinci_sirket) values(5,'Tencent Games')
insert into yayinci(oyun_id,yayinci_sirket) values(6,'Iv�r Z�v�r Company')
insert into yayinci(oyun_id,yayinci_sirket) values(7,'C�b�r C�b�r Games')
insert into yayinci(oyun_id,yayinci_sirket) values(8,'Valve')
insert into yayinci(oyun_id,yayinci_sirket) values(9,'Ea Games')

insert into inceleme(oyun_id,metacritic_puan�,Oyuncu_degerlendirmesi) values (1,89,8.9)
insert into inceleme(oyun_id,metacritic_puan�,Oyuncu_degerlendirmesi) values (2,56,5.7)
insert into inceleme(oyun_id,metacritic_puan�,Oyuncu_degerlendirmesi) values (3,79,5.9)
insert into inceleme(oyun_id,metacritic_puan�,Oyuncu_degerlendirmesi) values (4,39,6.9)
insert into inceleme(oyun_id,metacritic_puan�,Oyuncu_degerlendirmesi) values (5,59,8.0)
insert into inceleme(oyun_id,metacritic_puan�,Oyuncu_degerlendirmesi) values (6,80,8.1)
insert into inceleme(oyun_id,metacritic_puan�,Oyuncu_degerlendirmesi) values (7,84,8.2)
insert into inceleme(oyun_id,metacritic_puan�,Oyuncu_degerlendirmesi) values (8,35,8.4)
insert into inceleme(oyun_id,metacritic_puan�,Oyuncu_degerlendirmesi) values (9,76,7.6)

insert into fiyat(oyun_id,fiyat) values(1,65)
insert into fiyat(oyun_id,fiyat) values(2,150)
insert into fiyat(oyun_id,fiyat) values(3,43)
insert into fiyat(oyun_id,fiyat) values(4,67.90)
insert into fiyat(oyun_id,fiyat) values(5,98.34)
insert into fiyat(oyun_id,fiyat) values(6,61.61)
insert into fiyat(oyun_id,fiyat) values(7,78.34)
insert into fiyat(oyun_id,fiyat) values(8,60)
insert into fiyat(oyun_id,fiyat) values(9,31)

delete from yayinci where yayinci_sirket='Valve'
update inceleme set oyun_id=1,metacritic_puan�=91,Oyuncu_degerlendirmesi=9.2 where oyun_id=1