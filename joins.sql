/*
--JOINs allow us to  combile multiple tables together 
--the main reason for the different JOIN types is to 
decide how to deal with information  


SELECT * FROM table1
INNER JOIN table2 
ON table1.column_name = table2.column_name;
*/

--TYPES
-----1.INNER JOIN
-----2.LEFT JOIN
-----3.RIGHT JOIN
-----4.FULL JOIN
-----5.SELF JOIN


--INNER JOIN
SELECT * FROM payment
INNER JOIN customer
on payment.customer_id = customer.customer_id;


SELECT payment.payment_id, payment.customer_id,customer.first_name 
FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id;

--OUTER JOIN
---FULL OUTER JOIN
----if coloumn not present in other table the the value will consider as NULL
SELECT * FROM payment
FULL OUTER JOIN customer
ON customer.customer_id = payment.customer_id;

--printing null values
SELECT * FROM customer 
FULL OUTER JOIN payment
ON customer.customer_id = payment.customer_id
WHERE customer.customer_id IS null
OR payment.payment_id IS null;

--LEFT JOIN (LEFT OUTER JOIN)
---SELECT * FROM table1
---LEFT OUTER JOIN table2
---ON table1.customer_id =table2.customer_id;

---it will print all the elements of the left table and 
---only matching field of right table will br print remaining will br null


SELECT * FROM payment
LEFT OUTER JOIN customer
ON customer.store_id = payment.staff_id;


SELECT film.film_id, title, inventory_id,store_id
FROM film
LEFT JOIN inventory 
ON inventory.film_id = film.film_id
WHERE inventory.film_id IS null;


--RIGHT OUTER JOIN
-------it will print all the elements of the RIGHT table and 
-------only matching field of LEFT table will br print remaining will bE null
 
----SELECT * FROM table1
----RIGHT OUTER JOIN table2
----ON table1.customer_id =table2.customer_id;

--1. getting emails id of only california peaople
SELECT district,email FROM address
INNER JOIN customer
ON address .address_id = customer.address_id
WHERE district = 'California';

-- SELECT film.title, actor.first_name, last_name FROM film
-- INNER JOIN (SELECT actor.first_name, last_name FROM actor
-- 		   INNER JOIN 	film_actor 
-- 		   on film_actor.actor_id = actor.actor_id
-- 		   WHERE actor.first_name = 'Nick' and last_name = 'Wahlberg');


SELECT title, first_name, last_name from actor
INNER JOIN film_actor
ON actor.actor_id = film_actor.actor_id
INNER JOIN film
ON film.film_id = film_actor.film_id
WHERE first_name = 'Nick' and last_name = 'Wahlberg';





