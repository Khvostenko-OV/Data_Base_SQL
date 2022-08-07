-- Заполнение таблиц данными. Установка отношений многие ко многим.

INSERT INTO styles (title) VALUES('Jazz');
INSERT INTO styles (title) VALUES('Rock');
INSERT INTO styles (title) VALUES('Folk');
INSERT INTO styles (title) VALUES('Disco');
INSERT INTO styles (title) VALUES('Blues');
INSERT INTO styles (title) VALUES('Ambient');
INSERT INTO styles (title) VALUES('Ethno');
INSERT INTO styles (title) VALUES('Dub');
INSERT INTO styles (title) VALUES('Soul');
INSERT INTO styles (title) VALUES('Pop');
INSERT INTO styles (title) VALUES('Havy Metal');

INSERT INTO artists (artist_name, gender) VALUES('Iggi Pop', 'M');
INSERT INTO artists (artist_name, gender) VALUES('Beyonce', 'F');
INSERT INTO artists (artist_name, gender) VALUES('Lady Gaga', 'F');
INSERT INTO artists (artist_name, gender) VALUES('Pink', 'F');
INSERT INTO artists (artist_name, gender) VALUES('Billie Eilish', 'F');
INSERT INTO artists (artist_name, gender) VALUES('Монеточка', 'F');
INSERT INTO artists (artist_name, gender) VALUES('John Lennon', 'M');
INSERT INTO artists (artist_name, gender) VALUES('Филипп Киркоров', 'M');
INSERT INTO artists (artist_name, gender) VALUES('Иосиф Кабзон', 'M');
INSERT INTO artists (artist_name, gender) VALUES('Ozzy Osbourne', 'M');
INSERT INTO artists (artist_name, gender) VALUES('Вася Пупкин', 'M');
INSERT INTO artists (artist_name, gender) VALUES('Тётя Мотя', 'F');

INSERT INTO albums (title, release_year) VALUES('Imagine', 1970);
INSERT INTO albums (title, release_year) VALUES('Death Car', 1990);
INSERT INTO albums (title, release_year) VALUES('Deep Pink', 2001);
INSERT INTO albums (title, release_year) VALUES('The Idiot', 1977);
INSERT INTO albums (title, release_year) VALUES('Free', 2019);
INSERT INTO albums (title, release_year) VALUES('The Fame', 2008);
INSERT INTO albums (title, release_year) VALUES('Cheek to Cheek', 2014);
INSERT INTO albums (title, release_year) VALUES('Renaissance', 2022);
INSERT INTO albums (title, release_year) VALUES('4', 2011);
INSERT INTO albums (title, release_year) VALUES('Try This', 2003);
INSERT INTO albums (title, release_year) VALUES('Blizzard of Ozz', 1980);
INSERT INTO albums (title, release_year) VALUES('Black Rain', 2007);
INSERT INTO albums (title, release_year) VALUES('Happier Than Ever', 2021);
INSERT INTO albums (title, release_year) VALUES('Мама', 2021);
INSERT INTO albums (title, release_year) VALUES('Папа', 2020);
INSERT INTO albums (title, release_year) VALUES('Хлеб', 2017);
INSERT INTO albums (title, release_year) VALUES('Its my life', 2018);

INSERT INTO collections (title, release_year) VALUES('The Best 1', 1990);
INSERT INTO collections (title, release_year) VALUES('The Best 2', 2000);
INSERT INTO collections (title, release_year) VALUES('The Best 3', 2010);
INSERT INTO collections (title, release_year) VALUES('The Best 4', 2020);
INSERT INTO collections (title, release_year) VALUES('Trash 1', 2002);
INSERT INTO collections (title, release_year) VALUES('Trash 2', 2003);
INSERT INTO collections (title, release_year) VALUES('Trash 3', 2005);
INSERT INTO collections (title, release_year) VALUES('Trash 4', 2006);

INSERT INTO tracks (title, duration, album) VALUES('Imagine', '2:00:00', 1);
INSERT INTO tracks (title, duration, album) VALUES('Death Car', '0:2:00', 2);
INSERT INTO tracks (title, duration, album) VALUES('Michelle', '0:2:30', 1);
INSERT INTO tracks (title, duration, album) VALUES('Blue', '0:2:30', 3);
INSERT INTO tracks (title, duration, album) VALUES('Fool', '0:2:30', 4);
INSERT INTO tracks (title, duration, album) VALUES('Prison', '0:3:30', 5);
INSERT INTO tracks (title, duration, album) VALUES('Shame', '0:3:30', 6);
INSERT INTO tracks (title, duration, album) VALUES('Kiss', '0:3:00', 7);
INSERT INTO tracks (title, duration, album) VALUES('Kiss me', '0:3:00', 8);
INSERT INTO tracks (title, duration, album) VALUES('One', '0:3:00', 9);
INSERT INTO tracks (title, duration, album) VALUES('Two', '0:3:30', 9);
INSERT INTO tracks (title, duration, album) VALUES('This', '0:3:30', 10);
INSERT INTO tracks (title, duration, album) VALUES('Blizzard', '0:2:30', 11);
INSERT INTO tracks (title, duration, album) VALUES('Water', '0:2:30', 12);
INSERT INTO tracks (title, duration, album) VALUES('Bad Guy', '0:2:30', 13);
INSERT INTO tracks (title, duration, album) VALUES('Гусь', '0:2:30', 14);
INSERT INTO tracks (title, duration, album) VALUES('Свинья', '0:2:30', 15);
INSERT INTO tracks (title, duration, album) VALUES('Товарищь', '0:2:30', 16);
INSERT INTO tracks (title, duration, album) VALUES('Колбаса', '0:2:30', 16);
INSERT INTO tracks (title, duration, album) VALUES('Борода', '0:2:30', 15);
INSERT INTO tracks (title, duration, album) VALUES('Базука', '0:1:30', 16);
INSERT INTO tracks (title, duration, album) VALUES('I, me, my', '0:4:30', 1);
INSERT INTO tracks (title, duration, album) VALUES('Its my life', '0:5:30', 17);
INSERT INTO tracks (title, duration, album) VALUES('Game Over', '0:0:04', 17);

INSERT INTO stylesartists (style_id, artist_id) VALUES(2, 1);
INSERT INTO stylesartists (style_id, artist_id) VALUES(2, 7);
INSERT INTO stylesartists (style_id, artist_id) VALUES(4, 2);
INSERT INTO stylesartists (style_id, artist_id) VALUES(3, 3);
INSERT INTO stylesartists (style_id, artist_id) VALUES(10, 4);
INSERT INTO stylesartists (style_id, artist_id) VALUES(9, 5);
INSERT INTO stylesartists (style_id, artist_id) VALUES(7, 6);
INSERT INTO stylesartists (style_id, artist_id) VALUES(5, 7);
INSERT INTO stylesartists (style_id, artist_id) VALUES(8, 8);
INSERT INTO stylesartists (style_id, artist_id) VALUES(3, 9);
INSERT INTO stylesartists (style_id, artist_id) VALUES(11, 10);
INSERT INTO stylesartists (style_id, artist_id) VALUES(2, 10);
INSERT INTO stylesartists (style_id, artist_id) VALUES(2, 11);
INSERT INTO stylesartists (style_id, artist_id) VALUES(6, 11);
INSERT INTO stylesartists (style_id, artist_id) VALUES(11, 11);
INSERT INTO stylesartists (style_id, artist_id) VALUES(10, 12);
INSERT INTO stylesartists (style_id, artist_id) VALUES(1, 12);
INSERT INTO stylesartists (style_id, artist_id) VALUES(11, 12);

INSERT INTO artistsalbums (artist_id, album_id) VALUES(11, 2);
INSERT INTO artistsalbums (artist_id, album_id) VALUES(11, 4);
INSERT INTO artistsalbums (artist_id, album_id) VALUES(11, 5);
INSERT INTO artistsalbums (artist_id, album_id) VALUES(1, 2);
INSERT INTO artistsalbums (artist_id, album_id) VALUES(1, 4);
INSERT INTO artistsalbums (artist_id, album_id) VALUES(1, 5);
INSERT INTO artistsalbums (artist_id, album_id) VALUES(2, 6);
INSERT INTO artistsalbums (artist_id, album_id) VALUES(4, 7);
INSERT INTO artistsalbums (artist_id, album_id) VALUES(3, 8);
INSERT INTO artistsalbums (artist_id, album_id) VALUES(3, 9);
INSERT INTO artistsalbums (artist_id, album_id) VALUES(5, 8);
INSERT INTO artistsalbums (artist_id, album_id) VALUES(4, 10);
INSERT INTO artistsalbums (artist_id, album_id) VALUES(6, 3);
INSERT INTO artistsalbums (artist_id, album_id) VALUES(7, 1);
INSERT INTO artistsalbums (artist_id, album_id) VALUES(8, 14);
INSERT INTO artistsalbums (artist_id, album_id) VALUES(9, 15);
INSERT INTO artistsalbums (artist_id, album_id) VALUES(10, 11);
INSERT INTO artistsalbums (artist_id, album_id) VALUES(10, 12);
INSERT INTO artistsalbums (artist_id, album_id) VALUES(5, 13);
INSERT INTO artistsalbums (artist_id, album_id) VALUES(11, 14);
INSERT INTO artistsalbums (artist_id, album_id) VALUES(11, 16);
INSERT INTO artistsalbums (artist_id, album_id) VALUES(12, 6);
INSERT INTO artistsalbums (artist_id, album_id) VALUES(12, 7);
INSERT INTO artistsalbums (artist_id, album_id) VALUES(12, 8);
INSERT INTO artistsalbums (artist_id, album_id) VALUES(12, 9);
INSERT INTO artistsalbums (artist_id, album_id) VALUES(12, 10);
INSERT INTO artistsalbums (artist_id, album_id) VALUES(12, 11);
INSERT INTO artistsalbums (artist_id, album_id) VALUES(12, 12);
INSERT INTO artistsalbums (artist_id, album_id) VALUES(12, 14);
INSERT INTO artistsalbums (artist_id, album_id) VALUES(12, 15);
INSERT INTO artistsalbums (artist_id, album_id) VALUES(12, 16);
INSERT INTO artistsalbums (artist_id, album_id) VALUES(9, 17);

INSERT INTO trackscollections (track_id, collection_id) VALUES(1, 1);
INSERT INTO trackscollections (track_id, collection_id) VALUES(2, 1);
INSERT INTO trackscollections (track_id, collection_id) VALUES(3, 1);
INSERT INTO trackscollections (track_id, collection_id) VALUES(22, 1);
INSERT INTO trackscollections (track_id, collection_id) VALUES(4, 2);
INSERT INTO trackscollections (track_id, collection_id) VALUES(5, 2);
INSERT INTO trackscollections (track_id, collection_id) VALUES(6, 2);
INSERT INTO trackscollections (track_id, collection_id) VALUES(7, 3);
INSERT INTO trackscollections (track_id, collection_id) VALUES(8, 3);
INSERT INTO trackscollections (track_id, collection_id) VALUES(9, 3);
INSERT INTO trackscollections (track_id, collection_id) VALUES(10, 4);
INSERT INTO trackscollections (track_id, collection_id) VALUES(11, 4);
INSERT INTO trackscollections (track_id, collection_id) VALUES(12, 4);
INSERT INTO trackscollections (track_id, collection_id) VALUES(13, 5);
INSERT INTO trackscollections (track_id, collection_id) VALUES(14, 5);
INSERT INTO trackscollections (track_id, collection_id) VALUES(15, 5);
INSERT INTO trackscollections (track_id, collection_id) VALUES(16, 6);
INSERT INTO trackscollections (track_id, collection_id) VALUES(17, 6);
INSERT INTO trackscollections (track_id, collection_id) VALUES(18, 6);
INSERT INTO trackscollections (track_id, collection_id) VALUES(19, 7);
INSERT INTO trackscollections (track_id, collection_id) VALUES(20, 7);
INSERT INTO trackscollections (track_id, collection_id) VALUES(21, 7);
INSERT INTO trackscollections (track_id, collection_id) VALUES(5, 8);
INSERT INTO trackscollections (track_id, collection_id) VALUES(10, 8);
INSERT INTO trackscollections (track_id, collection_id) VALUES(15, 8);
INSERT INTO trackscollections (track_id, collection_id) VALUES(20, 8);
