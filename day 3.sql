/*LIMIT AND ORDER BY*/

Select * from customer
order by first_name desc;

SELECT * FROM customer
ORDER BY store_id;

SELECT store_id, first_name, last_name FROM customer
ORDER BY store_id DESC, first_name ASC;

SELECT * FROM CUSTOMER LIMIT 3 ;

SELECT * FROM payment
ORDER BY payment_date DESC
LIMIT 5;

SELECT * FROM payment
WHERE amount != 0.00
ORDER BY payment_date DESC
LIMIT 5;

SELECT customer_id FROM payment
ORDER BY payment_date ASC
LIMIT 10;

SELECT title, length FROM film
ORDER BY length ASC LIMIT 5;

SELECT COUNT(title) FROM film
WHERE length <= 50;

SELECT * FROM payment LIMIT 2;

/*BETWEEN OPERATOR*/
/*FOR DATES HAVE TO USE ISO 8601 FORMAT (YYYY-MM-DD)*/
SELECT * FROM payment 
WHERE amount BETWEEN 8 AND 9;

SELECT COUNT(*) FROM payment 
WHERE amount BETWEEN 8 AND 9;

SELECT COUNT(*) FROM payment 
WHERE amount NOT BETWEEN 8 AND 9;

SELECT * FROM payment 
WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-15';

-- SELECT  FROM table
-- WHERE color IN('RED','BLUE');

/*IN, NOT IN*/
SELECT DISTINCT(amount) FROM payment
WHERE amount IN (0.99,1.99,1.98);

SELECT * FROM payment
WHERE amount IN (0.99,1.99,1.98);

SELECT COUNT(*) FROM payment
WHERE amount IN (0.99,1.99,1.98);

SELECT COUNT(*) FROM payment
WHERE amount NOT IN (0.99,1.99,1.98);

SELECT * FROM customer
WHERE first_name IN ('John','Jake','Julie');

SELECT * FROM customer
WHERE first_name NOT IN ('John','Jake','Julie');

/*LIKE and ILIKE OPERATOR*/
--When we havr to match patterns in database then 
--like regex we use LIKE operator in SQL
--like and unlike operator are use to find the regex patterns
-- it uses wildcard charectors 
-- percent(%) and underscore(_)

--# all the names that BEGIN with 'A'
------WHERE name LIKE 'A%'

--# all the names that END with 'A'
----- WHERE name LIKE '%A'

--# UNDERSCORE i have to mention underscore there from where i want the data
------ WHERE  title LIKE 'Mission impossible _'
------ WHERE name LIKE '_her%'
----------Cheryl
----------Theresa
----------Sherri

-- for getting all pattern of regex in sql
-- https://www.postegresql.org/docs/functions-matching.html


SELECT * FROM customer
WHERE first_name LIKE 'J%';

SELECT COUNT(*) FROM customer
WHERE first_name LIKE 'J%';

SELECT * FROM customer
WHERE first_name LIKE 'J%' AND last_name LIKE 'S%';

SELECT * FROM customer
WHERE first_name ILIKE 'j%' AND last_name ILIKE 'j%';

SELECT * FROM customer
WHERE first_name ILIKE 'j%' AND last_name ILIKE 's%';

SELECT * FROM customer
WHERE first_name LIKE '%er%';

SELECT * FROM customer
WHERE first_name LIKE '%her%';

SELECT * FROM customer
WHERE first_name LIKE '_her%';

SELECT * FROM customer
WHERE first_name LIKE 'A%'
ORDER BY last_name ASC;

SELECT * FROM customer
WHERE first_name LIKE 'A%' AND last_name NOT LIKE 'B%'
ORDER BY last_name ASC;

/*CHALLENGE*/
--1 
SELECT COUNT(*) FROM payment
WHERE amount > 5.00;
 
--2 (actor first_name starts with P)
SELECT COUNT(*) FROM actor
WHERE first_name LIKE 'P%';


