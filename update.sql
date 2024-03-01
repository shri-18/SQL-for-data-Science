--UPDATE
SELECT * FROM account;

UPDATE account 
SET last_login = CURRENT_TIMESTAMP;

SELECT * FROM account;


SELECT * FROM job;

UPDATE job
SET job_name = 'AI Engineer';

SELECT* FROM job;

UPDATE account_job
SET hire_date = account.created_on
FROM account
WHERE account_job.user_id = account.user_id;

select * from account_job;


UPDATE account 
SET last_login = CURRENT_TIMESTAMP
RETURNING email,created_on,last_login;
