-- AUTHOR: Eric Lomeli-Gil --
SELECT first_name, last_name, email
FROM sakila.customer;

SELECT title AS Movie, rental_rate AS Price,rental_duration AS "Rental Days"
FROM film;

SELECT Concat(first_name,' ',last_name) AS "Full Name"
from actor;

SELECT title AS Title, rental_rate AS Rate, Round((rental_rate * 1.5),2) AS "Late Fee"
from film;

SELECT title AS Title, release_year AS "Year"  -- Year is keyword in SQL so put in quotes --
FROM film
WHERE release_year < 2000;

SELECT title AS Title, rental_rate AS Rate, replacement_cost AS Cost -- Question6 in W1 --
FROM film
WHERE rental_rate > 1.00
	AND replacement_cost < 20.00
ORDER BY rental_rate, replacement_cost ASC;

SELECT title, description rental_rate, rating
FROM film
WHERE rating = "G"
	OR rating = "PG"
    OR rating = "PG-13";
    

