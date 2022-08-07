-- Сложные запросы. Продвинутая выборка данных.
-- 1
select (select title from styles as s where s.id = sa.style_id), count(sa.artist_id) from stylesartists as sa
  group by sa.style_id
  order by sa.style_id;

-- 2
select a.title, a.release_year, (select count(t.id) from tracks as t where t.album = a.id) from albums as a
  where a.release_year between 2019 and 2020;

-- 3
select a.title, (select avg(t.duration) from tracks as t where t.album = a.id) from albums as a;

-- 4
select a.artist_name from artists as a 
  left join 
    (select aa.artist_id from artistsalbums as aa
      join albums as b
      on aa.album_id = b.id
      where b.release_year = 2020
    ) as s
  on a.id = s.artist_id
  where s.artist_id is null  
  order by a.id;

-- 5
select distinct c.title from trackscollections as tc
  join
    (select t.id from tracks as t 
      join
        (select b.id from artistsalbums as aa
          join artists as a
          on aa.artist_id = a.id
          join albums as b
          on aa.album_id = b.id
            where a.artist_name = 'Тётя Мотя'
        ) as s 
      on t.album = s.id
    ) as ss
  on tc.track_id = ss.id
  join collections as c
  on tc.collection_id = c.id 
  order by c.title;

-- 6
select distinct b.id, b.title from artistsalbums as aa
  join 
    (select a.id from stylesartists as sa
      join artists as a
      on sa.artist_id = a.id
      join styles as s
      on sa.style_id = s.id
      group by a.id 
      having count(s.id) > 1
    ) as ss
  on aa.artist_id = ss.id
  join albums as b
  on aa.album_id = b.id 
  order by b.id; 

-- 7
select tr.title from tracks as tr
  left join
    (select distinct t.id from trackscollections as tc
      join tracks as t
      on tc.track_id = t.id
    ) as s
  on tr.id = s.id
  where s.id is null
  order by tr.id;

-- 8
select a.artist_name from artists as a 
  join
    (select aa.artist_id from artistsalbums as aa
      join
        (select t.album  from tracks as t 
          where t.duration = (select min(duration) from tracks)
        ) as s
      on aa.album_id = s.album
    ) as ss
  on a.id = ss.artist_id
  order by a.id;

-- 9
select a.title from albums as a 
  join
    (select s.album from (select tr.album, count(tr.id) as c from tracks as tr
                           group by tr.album
                         ) as s
      where s.c = (select min(qq.q) from (select count(t.id) as q from tracks as t
                                           group by t.album
                                         ) as qq
                  )
    ) as ss
  on a.id = ss.album
  order by a.id;
