-- filters
SELECT * 
  FROM movies
 WHERE year IN (2004, 2008, 2010);
 
-- group by, alias, order by, limit, offset
 SELECT director,
        AVG(length_minutes) AS mean_length
  FROM movies
 GROUP BY director
 ORDER BY mean_length DESC
 LIMIT 3 OFFSET 2;
 
SELECT * FROM movies;

SELECT * FROM movie_info;

-- bring information from another table

SELECT *
  FROM movies
  	   INNER JOIN
	   movie_info
	ON movies.id = movie_info.movie_id;
	

-- case when
SELECT info.movie_id,
	   a.title,
	   a.director,
	   a.year,
	   info.rating,
	   info.rating * 100 AS rating_100,
	   CASE WHEN info.rating > 8 THEN 'oscar_canditate' ELSE 'n' END AS oscar,
	   CASE 
	   		WHEN a.year > 1990 AND a.year <= 2000 THEN '1990' 
			WHEN a.year BETWEEN 2000 AND 2010 THEN '2000'
			ELSE '2010' 
		END AS decades
  FROM movies AS a
  	   INNER JOIN
	   movie_info AS info
	ON a.id = info.movie_id;



-- SUBQUERY
SELECT * FROM
(SELECT info.movie_id,
	   a.title,
	   a.director,
	   a.year,
	   info.rating,
	   info.rating * 100 AS rating_100,
	   CASE WHEN info.rating > 8 THEN 'oscar_canditate' ELSE 'n' END AS oscar,
	   CASE 
	   		WHEN a.year > 1990 AND a.year <= 2000 THEN '1990' 
			WHEN a.year BETWEEN 2000 AND 2010 THEN '2000'
			ELSE '2010' 
		END AS decades
  FROM movies AS a
  	   INNER JOIN
	   (SELECT * FROM movie_info WHERE rating > 8) AS info
	ON a.id = info.movie_id) AS joined_table
 WHERE joined_table.decades = '1990';
 
 
 -- multiple joins
 SELECT a.id,
	   a.title,
	   a.director,
	   a.year,
	   CASE WHEN info.rating > 8 THEN 'oscar_canditate' ELSE 'n' END AS oscar,
	   info.international_sales,
	   c.international_sales
  FROM movies AS a
  	   LEFT JOIN
	   (SELECT * FROM movie_info WHERE rating > 8) AS info
	ON a.id = info.movie_id
	    LEFT JOIN
	   (SELECT * FROM movie_info WHERE rating  < 8) AS c
	ON a.id = c.movie_id;



-- CTE common table expressions
SELECT * FROM
(SELECT a.id,
	   a.title,
	   a.director,
	   a.year,
	   CASE WHEN info.rating > 8 THEN 'oscar_canditate' ELSE 'n' END AS oscar,
	   CASE WHEN info.international_sales > info.domestic_sales THEN 1 ELSE 0 END AS international_greater
  FROM movies AS a
  	   LEFT JOIN
	   (SELECT * FROM movie_info WHERE rating > 8) AS info
	ON a.id = info.movie_id) AS c
WHERE c.international_greater = 1;


WITH info AS (
	-- this table represents oscar candidates
SELECT * FROM movie_info WHERE rating > 8
),
movie_director AS (
	-- this table represents andrew stantons' movies
SELECT * FROM movies WHERE director = 'Andrew Stanton'
),
joined_table AS (
	-- joining results
SELECT a.id,
	   a.title,
	   a.director,
	   a.year,
	   CASE WHEN info.rating > 8 THEN 'oscar_canditate' ELSE 'n' END AS oscar,
	   CASE WHEN info.international_sales > info.domestic_sales THEN 1 ELSE 0 END AS international_greater
  FROM movie_director AS a
  	   LEFT JOIN
	   info
	ON a.id = info.movie_id
)
-- selecting results
SELECT * FROM joined_table;

-- temporary table and views

CREATE TABLE example AS 
SELECT * FROM movies;

SELECT * FROM example;

CREATE TEMPORARY TABLE example_tmp AS 
SELECT * FROM movies;

CREATE TABLE example_tmp AS 
SELECT * FROM example_tmp;

-- view
CREATE VIEW movies_greater_120 AS
SELECT * FROM movies WHERE length_minutes > 120;


SELECT * FROM movies_greater_120;

INSERT INTO movies VALUES(30, 'O IRLANDES', 'SCORCESE', 2019, 210);


SELECT * FROM (SELECT * FROM movies WHERE length_minutes > 120;)