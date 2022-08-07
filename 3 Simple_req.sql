-- Простые запросы. Выборки из одной таблицы.
-- 1
select title, release_year from albums 
  where release_year = 2018;

-- 2
select title, duration from tracks
  order by duration desc 
  limit 1;

-- 3
select title from tracks
  where duration >= '0:3:30';

-- 4
select title from collections
  where release_year between 2018 and 2020;

-- 5
select artist_name from artists
  where artist_name not like '% %';

-- 6
select title from tracks
  where title like '%my%' or title like '%мой%';