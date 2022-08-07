-- Создание таблиц

create table if not exists Styles (
	id serial primary key,
	title varchar(60) not null
);

create table if not exists Artists (
	id serial primary key,
	artist_name varchar(100) not null,
	gender varchar(20) not null
);

create table if not exists Albums (
	id serial primary key,
	title varchar(100) not null,
	release_year integer not null
);

create table if not exists Collections (
	id serial primary key,
	title varchar(100) not null,
	release_year integer not null
);

create table if not exists Tracks (
	id serial primary key,
	title varchar(100) not null,
	duration interval not null,
	album integer not null references Albums(id)
);

create table if not exists StylesArtists (
	style_id integer not null references Styles(id),
	artist_id integer not null references Artists(id),
	constraint pk1 primary key (style_id, artist_id)
);

create table if not exists ArtistsAlbums (
	artist_id integer not null references Artists(id),
	album_id integer not null references Albums(id),
	constraint pk2 primary key (artist_id, album_id)
);

create table if not exists TracksCollections (
	track_id integer not null references Tracks(id),
	collection_id integer not null references Collections(id),
	constraint pk3 primary key (track_id, collection_id)
);
