CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	genre_name varchar(100) NOT NULL unique
);

CREATE TABLE IF NOT EXISTS Executer (
	id SERIAL PRIMARY KEY,
	name varchar(100) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS GenreExecuter (
	genre_id integer REFERENCES Genre(id),
	executer_id integer REFERENCES Executer(id),
	CONSTRAINT genre_executer_pk PRIMARY KEY (genre_id, executer_id)
);

CREATE TABLE IF NOT EXISTS Album (
	id SERIAL PRIMARY KEY,
	album_name varchar(100) NOT NULL,
	release_date integer NOT NULL
);

CREATE TABLE IF NOT EXISTS ExecuterAlbum (
	executer_id integer REFERENCES Executer(id),
	album_id integer REFERENCES Album(id),
	CONSTRAINT executer_album_pk PRIMARY KEY(executer_id, album_id)
);

CREATE TABLE IF NOT EXISTS Track (
	id SERIAL PRIMARY KEY,
	name_track varchar(200) NOT NULL UNIQUE,
	duration integer NOT NULL,
	album_id integer REFERENCES Album(id)
);

CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	name_collection varchar(150) NOT NULL UNIQUE,
	years_of_realese integer NOT NULL
);

CREATE TABLE IF NOT EXISTS CollectionTrack (
	collection_id integer REFERENCES Collection(id),
	track_id integer REFERENCES Track(id),
	CONSTRAINT collection_track_pk PRIMARY KEY(collection_id, track_id)
);

