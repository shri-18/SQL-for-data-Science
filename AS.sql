SELECT COUNT(amount)  AS num_transactions FROM payment;

SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id;

SELECT customer_id, SUM(amount) As total_spent
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100;

---it will throw the error so we cant use alias name as variable 
/*SELECT customer_id, SUM(amount) As total_spent
FROM payment
GROUP BY customer_id
HAVING total_spent > 100;*/

SELECT customer_id, amount As new_name
FROM payment
WHERE amount > 2;


