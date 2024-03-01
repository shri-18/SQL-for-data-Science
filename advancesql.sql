/* 
we have already seen that PostgreSQL can hold date and time information:
-- TIME: Contains only time
-- DATE: Contains only Date
-- TIMESTAMP: Contains DATE AND TIME
-- TIMESTAMPTZ: Contains DATE, TIME, and TIMEZONE.
*/

SHOW TIMEZONE;
SELECT now();
SELECT TIMEOFDAY();
SELECT CURRENT_DATE ;


SELECT EXTRACT(MONTH FROM payment_date) AS pay_month
FROM payment;


SELECT EXTRACT(QUARTER FROM payment_date) AS pay_month
FROM payment;

SELECT TO_CHAR(payment_date,'MM/DD/YYYY')
FROM payment;

SELECT DISTINCT(TO_CHAR(payment_date,'MONTH'))
FROM payment;

--DAY 2
--CHALLENGE

SELECT COUNT(*) FROM payment
WHERE (EXTRACT(dow FROM payment_date)=1);


SELECT rental_rate/replacement_cost from film;
SELECT rental_rate*replacement_cost from film;
SELECT rental_rate+replacement_cost from film;


SELECT round(rental_rate/replacement_cost,2) FROM film;


SELECT first_name || last_name
FROM customer;

SELECT first_name || ' ' || last_name
FROM customer;

SELECT UPPER(first_name) || ' ' || UPPER(last_name) AS full_name
FROM customer;

SELECT LEFT(first_name,1) || (last_name) || '@gmail.com'
FROM customer;

SELECT RIGHT(first_name,1) || (last_name) || '@gmail.com'
FROM customer;

SELECT LOWER(LEFT(first_name,1)) || (last_name) || '@gmail.com'
AS custom_email FROM customer;


--SUBQUERY
SELECT customer_id FROM customer
WHERE customer_id = (SELECT customer_id FROM payment WHERE amount = 7.99 limit 1);

SELECT AVG(rental_rate) FROM film;


SELECT title , rental_rate
FROM film
WHERE rental_rate > (SELECT AVG(rental_rate) FROM film);

SELECT * FROM rental;
SELECT * FROM inventory;

SELECT * FROM rental
WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30';

SELECT inventory.film_id
FROM rental
INNER JOIN inventory ON inventory.inventory_id = rental.inventory_id
WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30';

SELECT film_id, title
FROM film
WHERE film_id IN
(SELECT inventory.film_id
FROM rental
INNER JOIN inventory ON inventory.inventory_id = rental.inventory_id
WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30');










