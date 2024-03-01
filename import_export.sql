CREATE TABLE countries
(
	country_id VARCHAR(5),
	country_name VARCHAR(20),
	region_id DECIMAL(10,0)
);
SELECT * FROM countries;

CREATE  TABLE DUP_COUNTRIES AS
(
	SELECT * FROM COUNTRIES 
)
WITH NO DATA;

CREATE TABLE IF NOT EXISTS countries
(
	country_id VARCHAR(2) NOT NULL,
	country_name VARCHAR(48) NOT NULL,
	REGION_I DECIMAL(10,0)
);

CREATE TABLE jobs
(
	job_id SERIAL PRIMARY KEY,
	JOB_TITLE VARCHAR(50) NOT NULL,
	MIN_SALARY DECIMAL(6,0),
	MAX_SALARY DECIMAL(6,0),
	CHECK (MAX_SALARY >= 25000)
);


CREATE TABLE if not exists countries
(
	country_id VARCHAR(5),
	country_name VARCHAR(20),
	region_id DECIMAL(10,0)
	CHECK (country_name IN ('India','Italy','China'))
);

CREATE TABLE if not exists countries
(
	country_id VARCHAR(5) unique,
	country_name VARCHAR(20),
	region_id DECIMAL(10,0)
	CHECK (country_name IN ('India','Italy','China'))
);


CREATE TABLE IF NOT EXISTS  jobs1
(
	job_id SERIAL PRIMARY KEY,
	JOB_TITLE VARCHAR(50) DEFAULT NULL,
	MIN_SALARY DECIMAL(10,0),
	MAX_SALARY DECIMAL(10,0) DEFAULT NULL,
	CHECK (MIN_SALARY = 5000)
);

SELECT * FROM JOBS1;

CREATE TABLE if not exists countries2
(
	country_id SERIAL PRIMARY KEY,
	country_name VARCHAR(20),
	region_id DECIMAL(10,0)
	CHECK (country_name IN ('India','Italy','China'))
);


CREATE TABLE job_history
(
	employee_id INT NOT NULL PRIMARY KEY,
	START_DATE DATE NOT NULL,
	END_DATE DATE NOT NULL,
	JOB_ID Serial NOT NULL,
	DEPARTMENT_ID DECIMAL(5,0) DEFAULT NULL,
	FOREIGN KEY (job_id) REFERENCES jobs1(job_id)
);