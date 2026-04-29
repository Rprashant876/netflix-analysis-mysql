use practice;

select * from netflix;

-- count total number of shows on netlix
-- ------------------------------------------------------------------
select count(*) from netflix where type='TV Show';

-- 2. Count how many are Movies vs TV Shows. 
-- ------------------------------------------------------
select type,count(type) from netflix group by type;

-- 3. Show all movies released after 2015.
-- ---------------------------------------------------------------
select * from netflix where type='movie' and release_year>2015;

-- 4. Find all TV Shows with rating 'TV-MA'. 
-- --------------------------------------------------------------------------------
select * from netflix where type='TV Show' and rating='TV-MA';

-- 5. List top 10 latest added shows. 
-- ---------------------------------------------------------------------------------

select * from netflix order by date_added desc limit 10;

select * from (
select *,dense_rank() over (order by date_added desc ) as rnk from netflix order by date_added desc 
) t
where rnk<=10;

-- 6. Find all shows from India. 
-- --------------------------------------------------------------------------------
select * from netflix where type='TV Show' and country='India';
select * from netflix where type='Movie' and country='India';

-- 7. Get all content released in 2020. 
-- ----------------------------------------------------------------------------------
select * from netflix where release_year=2020;

-- 8. Find movies with duration more than 120 minutes.
-- -----------------------------------------------------------------------------------
select * from netflix where type='Movie' and duration > 120;

-- 9. Top 5 oldest movies on Netflix. 
-- ----------------------------------------------------------------------------------------
select * from netflix where type='Movie' order by release_year limit 5 ;

-- 10 Latest 10 shows added to Netflix.
-- -------------------------------------------------------------------------------------------
select * from netflix where type='TV Show' order by date_added desc limit 10 ;

-- 11 Sort movies by duration (longest first). 
select * from netflix where type='Movie' order by duration desc;

-- 12  Sort shows by release year (descending). 
-- -----------------------------------------------------------------------------------------------
select * from netflix where type='TV Show' order by release_year desc;

-- 13 Count number of shows per rating. 
-- ------------------------------------------------------------------------------------------------
select rating,count(*) count from netflix where type='TV Show' group by rating;

-- 14 Count number of shows per country. (problem)
-- ------------------------------------------------------------------------------------------------
select country ,count(*) no_of_show from netflix where type='TV Show' group by country;

-- 15 Average movie duration. 
select avg(duration) avg_duration from netflix where type='Movie';

-- 16 Count shows added each year. 

select year(date_added) 'Year' ,count(*) 
from netflix 
where type='TV Show' 
group by year(date_added) 
order by year(date_added) ;

-- 17 Find maximum movie duration. 

select max(duration) 'max_duration' from netflix where type='Movie';

-- 18 Which country produces the most Netflix content? 

select country,count(*) no_of_content from netflix group by country order by count(*) desc;

-- 19  Count number of movies vs TV shows per country.
 
select country,
sum(case when type='Movie' THEN 1 ELSE 0 END) as 'movie',
sum(case when type='TV Show' THEN 1 ELSE 0 END) as 'TV Show'
from netflix
group by country;

-- 20 Find top 5 directors with most content. 

select director , count(*) from netflix where director <> 'unknown'group by director order by count(*) desc limit 5;

WITH director_count AS (
    SELECT director, COUNT(*) AS total
    FROM netflix
    where director <> 'unknown'
    GROUP BY director
)

SELECT director, total,rnk
FROM (
    SELECT director, total,
           dense_rank() OVER (ORDER BY total DESC) AS rnk
    FROM director_count
) t
WHERE rnk <= 5;


