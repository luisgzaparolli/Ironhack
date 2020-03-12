-- CHALLENGE 1

-- au_id Primary Key
SELECT au_id, au_lname, au_fname FROM authors;

-- au_id Foreign Key
SELECT * FROM titleauthor;
-- title_id Foreign Key

-- title_id Primary Key
SELECT * FROM titles;
-- pub_id Foreign Key

-- pub_id Primary Key
SELECT * FROM publishers;

SELECT a.au_id AS "AUTHOR ID", a.au_lname AS "LAST NAME", a.au_fname AS "FIRST NAME", c.title "TITLE", d.pub_name AS "PUBLISHER"
	FROM authors AS a
		INNER JOIN
		titleauthor as b
		ON a.au_id = b.au_id
		INNER JOIN
		titles as c
		ON b.title_id = c.title_id
		INNER JOIN
		publishers as d
		ON c.pub_id = d.pub_id
		ORDER BY a.au_id;
		
	
-- CHALLENGE 2

-- au_id Primary Key
SELECT au_id, au_lname, au_fname FROM authors;

-- au_id Foreign Key
SELECT * FROM titleauthor;
-- title_id Foreign Key

-- title_id Primary Key
SELECT * FROM titles;
-- pub_id Foreign Key

-- pub_id Primary Key
SELECT * FROM publishers;

SELECT a.au_id AS "AUTHOR ID", a.au_lname AS "LAST NAME", a.au_fname AS "FIRST NAME", d.pub_name AS "PUBLISHER", count(c.title) AS "TITLE COUNT"
	FROM authors AS a
		INNER JOIN
		titleauthor as b
		ON a.au_id = b.au_id
		INNER JOIN
		titles as c
		ON b.title_id = c.title_id
		INNER JOIN
		publishers as d
		ON c.pub_id = d.pub_id
		GROUP BY a.au_id, a.au_lname, a.au_fname, d.pub_name
		ORDER BY "TITLE COUNT" DESC;
		
-- CHALLENGE 3

-- au_id Primary Key
SELECT au_id, au_lname, au_fname FROM authors;

-- au_id Foreign Key
SELECT * FROM titleauthor;
-- title_id Foreign Key

-- title_id Primary Key
SELECT * FROM sales;

SELECT a.au_id AS "AUTHOR ID", a.au_lname AS "LAST NAME", a.au_fname AS "FIRST NAME", sum(d.qty) AS "TOTAL"
	FROM authors AS a
		INNER JOIN
		titleauthor as b
		ON a.au_id = b.au_id
		INNER JOIN
		sales as d
		ON b.title_id = d.title_id
		GROUP BY a.au_id, a.au_lname, a.au_fname
		ORDER BY "TOTAL" DESC LIMIT 3;
		
-- CHALLENGE 4


SELECT a.au_id AS "AUTHOR ID", a.au_lname AS "LAST NAME", a.au_fname AS "FIRST NAME", COALESCE(sum(d.qty), 0) AS "TOTAL"
	FROM authors AS a
		LEFT JOIN
		titleauthor as b
		ON a.au_id = b.au_id
		LEFT JOIN
		sales as d
		ON b.title_id = d.title_id
		GROUP BY a.au_id, a.au_lname, a.au_fname
		ORDER BY "TOTAL" DESC;