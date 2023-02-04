create table if not exists performer (
	id SERIAL primary key,
	name_p varchar(60) not null
);

create table if not exists genre (
	id SERIAL primary key,
	name varchar(60) not null
);

create table if not exists album (
	id SERIAL primary key,
	name varchar(60) not null,
	year_a integer not null
);

create table if not exists track (
	id SERIAL primary key,
	name_t varchar(60) not null,
	duration time not null,
	album_id integer references album(id)
);

create table if not exists performer_album (
	id SERIAL primary key,
	performer_id integer references performer(id),
	album_id integer references album(id),
	constraint pk primary key (performer_id, album_id)
);

create table if not exists genre_performer (
	id SERIAL primary key,
	genre_id integer references genre(id),
	performer_id integer references performer(id)
);

create table if not exists collection (
	id SERIAL primary key,
	name_c varchar(60) not null,
	year_c integer not null
);

create table if not exists music_collection (
	id SERIAL primary key,
	collection_id integer references collection(id),
	track_id integer references track(id)
	
)