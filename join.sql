SELECT g.genre_name, count(ge.executer_id) FROM genre g
   JOIN genreexecuter ge ON g.id = ge.genre_id
   GROUP BY g.genre_name;
   
SELECT a.album_name, a.release_date, count(t.id) FROM album a
   JOIN track t ON a.id = t.album_id
   WHERE a.release_date BETWEEN 2019 and 2020
   GROUP BY a.album_name, a.release_date;
  
SELECT a.album_name, AVG(t.duration) FROM album a
	JOIN track t ON a.id = t.album_id
	GROUP BY a.album_name;

SELECT e.name FROM executer e
   JOIN executeralbum ea ON e.id = ea.executer_id
   JOIN album a ON a.id = ea.album_id
   WHERE a.release_date < 2020; 
  
SELECT c.name_collection FROM collection c
   JOIN collectiontrack ct ON c.id = ct.collection_id
   JOIN track t ON t.id = ct.track_id
   JOIN album a ON a.id = t.album_id
   JOIN executeralbum ea ON a.id = ea.album_id
   JOIN executer e ON e.id = ea.executer_id
   WHERE e.name LIKE '%Eminem%';  
   
SELECT a.album_name FROM album a
	JOIN executeralbum ea ON a.id = ea.album_id
	JOIN executer e ON e.id = ea.executer_id
	JOIN genreexecuter ge ON ge.executer_id = e.id
	JOIN genre g ON g.id = ge.genre_id
	GROUP BY e.name, a.album_name
    HAVING count(ge.genre_id) > 1;
   
SELECT t.name_track FROM track t
	LEFT JOIN  collectiontrack ct ON t.id = ct.track_id
	WHERE ct.track_id IS null;
	
SELECT e.name FROM executer e
	JOIN executeralbum ea ON e.id = ea.executer_id
	JOIN album a ON a.id = ea.album_id
	JOIN track t ON t.album_id = a.id
	WHERE duration = (SELECT MIN(duration) FROM track);

SELECT a.album_name , count(t.id) FROM album a
    JOIN track t ON a.id = t.album_id
    GROUP BY a.album_name 
    HAVING count(t.id) in (
    	SELECT count(t.id) FROM album a
    	JOIN track t ON a.id = t.album_id
        GROUP BY a.album_name
        ORDER BY count(t.id)
        LIMIT 1);  