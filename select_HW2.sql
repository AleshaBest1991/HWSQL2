*-- название и год выхода альбомов, вышедших в 2018 году
select name, year from album 
where year=2018;

*-- название и продолжительность самого длительного трека

select name, duration from track
order by duration desc
limit 1;

*-- название треков, продолжительность которых не менее 3,5 минуты

select name, duration from track
where duration >=3.5

*-- названия сборников, вышедших в период с 2018 по 2020 год включительно

select name_c from collection
where year_c between 2018 and 2020

*-- исполнители, чье имя состоит из 1 слова

select name from performer 
where name  not like '% %'

*-- название треков, которые содержат слово "мой"/"my".

select name from track
where name  like '%my%' or name like '%мой%';


