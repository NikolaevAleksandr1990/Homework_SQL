select album_name, release_date from album 
	where release_date = 2018

select name_track, duration from track
	order by duration desc 
	limit 1

select name_track from track
	where duration >= 210

select name_collection from collection
	where years_of_realese between 2018 and 2020

select name from executer
	where name not like '% %'
	
select name_track from track
	where name_track  like '%my%' 
	