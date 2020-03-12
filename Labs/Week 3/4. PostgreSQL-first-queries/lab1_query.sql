--1. What are the different genres?

SELECT DISTINCT prime_genre
FROM data;

--2. Which is the genre with the most apps rated?

SELECT DISTINCT prime_genre, COUNT(rating_count_tot)
FROM data
GROUP BY prime_genre
ORDER BY COUNT DESC;

--3. Which is the genre with most apps?

SELECT DISTINCT prime_genre, count(prime_genre) as qtd
FROM data
GROUP BY prime_genre
ORDER BY qtd DESC;

--4. Which is the one with least?**

SELECT DISTINCT prime_genre, count(prime_genre) as qtd
FROM data
GROUP BY prime_genre
ORDER BY qtd ASC;

-- 5. Find the top 10 apps most rated.**

SELECT track_name, rating_count_tot
FROM data
GROUP BY track_name, rating_count_tot
ORDER BY rating_count_tot DESC LIMIT 10;

--6. Find the top 10 apps best rated by users.**

SELECT track_name, user_rating
FROM data
GROUP BY track_name, user_rating
ORDER BY user_rating DESC LIMIT 10;

--7. Take a look at the data you retrieved in question 5. Give some insights.**

SELECT track_name, prime_genre, rating_count_tot, user_rating
FROM data
GROUP BY track_name, rating_count_tot, prime_genre, user_rating
ORDER BY rating_count_tot DESC LIMIT 10;

-- 8. Take a look at the data you retrieved in question 6. Give some insights.**

SELECT track_name, rating_count_tot, user_rating, rating_count_ver, user_rating_ver
FROM data
GROUP BY track_name, rating_count_tot, user_rating, rating_count_ver, user_rating_ver
ORDER BY user_rating DESC LIMIT 10;

-- 9. Now compare the data from questions 5 and 6. What do you see?**

SELECT DISTINCT prime_genre, rating_count_tot, user_rating
FROM data
GROUP BY  prime_genre, rating_count_tot, user_rating
ORDER BY rating_count_tot DESC LIMIT 3;

--10. How could you take the top 3 regarding both user ratings and number of votes?**

SELECT track_name, prime_genre, rating_count_tot, user_rating
FROM data
WHERE user_rating > 4.5
GROUP BY  track_name, prime_genre, user_rating, rating_count_tot
ORDER BY rating_count_tot DESC LIMIT 3;

--11. Do people care about the price of an app?
-- Do some queries, comment why are you doing them and the results you retrieve.
-- What is your conclusion?

-- checking the number of rating by the price.
SELECT track_name, price, rating_count_tot, user_rating
FROM data
GROUP BY track_name, price, rating_count_tot, user_rating
ORDER BY price DESC;

-- checking the rating just apps that have a price
SELECT track_name,price, rating_count_tot, user_rating
FROM data
WHERE price > 0
GROUP BY track_name, price, rating_count_tot, user_rating
ORDER BY user_rating DESC LIMIT 20;

-- how much expensive the app is less rating count

-- Bonus: Find the total number of games available in more than 1 language.**

SELECT COUNT(*)
FROM data
WHERE prime_genre = 'Games' AND "lang.num" > 1

-- Bonus2: Find the number of free vs paid apps**

SELECT COUNT(price) AS Free, COUNT(price) AS Paid
CASE WHEN 
	 Free = 0 THEN 1
	 else as fl_maior_500
FROM data;


SELECT * FROM data