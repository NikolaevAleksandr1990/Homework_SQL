insert into genre(genre_name)
	values('Pop'), ('Rock'), ('Rap'), ('Jazz'), ('Metall');
	
insert into executer(name)
	values('Eminem'), ('Linkin Park'), ('Rob Zombie'), ('Pink'), 
		  ('Louis Armstrong'), ('AC/DC'), ('Кровосток'), ('Evanesense');
		  
insert into GenreExecuter(genre_id, executer_id)
	values(1,4), (2,2), (2,6), (2,8), (3,1), (3,7), (4,5), (5,3);
	
insert into album (album_name, release_date)
	values('The Eminem Show', 2002), ('One More Light', 2017),
		  ('The Lunar Injection Kool Aid Eclipse Conspiracy', 2021),
		  ('Funhouse', 2008), ('What a Wonderful World',1967),
		  ('The Razor’s Edge', 1990), ('Сквозное',2006), 
		  ('Evanescence',2011);
		  
insert into executeralbum (executer_id, album_id)
	values(1,1), (2,2), (3,3), (4,4),
		  (5,5), (6,6), (7,7), (8,8);
		 
insert into track (name_track, duration, album_id) 
	values('White America', 324, 1),
	      ('Say Goodbye Hollywood', 274, 1),
	      ('Nobody Can Save Me', 224, 2),
	      ('Talking to Myself', 231, 2),
	      ('The Triumph of King Freak (A Crypt of Preservation and Superstition)', 247, 3),
	      ('The Ballad of Sleazy Rider', 183, 3),
	      ('So What', 215, 4),
	      ('Sober', 251, 4),
	      ('What a Wonderful World', 140, 5),
	      ('Thunderstruck', 297, 6),
	      ('Fire Your Guns', 174, 6),
	      ('Простые слова', 415, 7),
	      ('Людоед', 225, 7),
	      ('What You Want', 281, 8),
	      ('Made of Stone', 273, 8);
	     
insert into  collection (name_collection, years_of_realese) 
	values('Сборник1', 1970), ('Сборник2', 1993),
		('Сборник3', 2003), ('Сборник4', 2010),
		('Сборник5', 2014), ('Сборник6', 2019),
		('Сборник7', 2020), ('Сборник8', 2022);
		
insert into CollectionTrack (collection_id, track_id)
	values(1,9), (2,10), (2,11), (3,1), (3,10), (4,7), (4,8), (5,1),
	      (5,2), (6,1), (6,4), (7,3), (7,15), (7,14), (8,9), (8,5), (8,6);
	     
update album 
	set release_date = 2018
	where album_name = 'One More Light'
	
update track 
	set name_track = 'What my Wonderful World'
	where duration = 140
	     

	