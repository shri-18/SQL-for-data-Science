
-- VIEWS
CREATE  VIEW CUSTOMER_INFO AS
SELECT FIRST_NAME, LAST_NAME, ADDRESS FROM CUSTOMER
INNER JOIN ADDRESS
ON CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;

SELECT * FROM CUSTOMER_INFO;

CREATE OR REPLACE VIEW CUSTOMER_INFO AS
SELECT FIRST_NAME, LAST_NAME, ADDRESS FROM CUSTOMER
INNER JOIN ADDRESS
ON CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;

SELECT * FROM CUSTOMER_INFO;


ALTER VIEW CUSTOMER_INFO RENAME TO COST_INFO;

SELECT * FROM COST_INFO;
