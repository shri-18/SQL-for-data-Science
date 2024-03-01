--DELETE
INSERT INTO job
VALUES (2,'Cowboy');


DELETE FROM job
WHERE job_name = 'Cowboy'
RETURNING job_id, job_name;

SELECT * FROM job;

