-- Q1. Write a SQL statement to create a table named jobs including 
-- columns job_id, job_title, min_salary, max_salary 
-- and check whether the max_salary amount exceeding the upper limit 25000.

CREATE TABLE jobs(
	job_id INT , 
	job_title VARCHAR(50), 
	min_salary INT, 
	max_salary INT CHECK (max_salary <= 25000)
);

-- Q2. Write a SQL statement to change the email 
-- column of the jobs table with 'not available' for all employees.

ALTER TABLE jobs
ADD COLUMN email VARCHAR(20) ;

UPDATE jobs
set email = 'not available';

-- Q3. Write a SQL statement to rename the table jobs to jobs_new.

ALTER TABLE jobs
RENAME TO jobs_new;

-- Q.4 Write a SQL statement to add a column dept_id to the table locations.

CREATE TABLE locations(
	address varchar(50),
	area varchar(50),
	district varchar(50)
)

ALTER TABLE locations
ADD COLUMN dept_id INT unique;

-- Q.5 Write a SQL statement to insert a record with your own 
-- value into the table jobs_new against each column.

INSERT INTO jobs_new values(1,'Scientist', 5000, 24000);
select * from jobs_new;

-- Q.6 Write a query to display the names (job_id,dept_id) .

SELECT job_id,dept_id from jobs_new;



-- Q.7 Write a query to get the maximum total salaries payable to employees.

SELECT MAX(max_salary) FROM jobs_new;

-- Q.8 Write a query to get the average salary and number of employees are working.

SELECT (AVG(max_salary)), COUNT(job_id) from jobs_new;

-- Q.9 Create a table manager_details comprises 
-- of manager_id,manager_name ,dept_id and 
-- Write a query to make a join with two tables jobs_new and manager_details

CREATE TABLE manager_details(
	manager_id INT PRIMARY KEY,
	manager_name VARCHAR(50) UNIQUE ,
	dept_id INT UNIQUE
)

SELECT jobs_new.dept_id, manager_details.dept_id from jobs_new
INNER JOIN manager_details 
ON jobs_new.dept_id = manager_details.dept_id

-- Q.10 Write a SQL subquery to find the emp_id  
-- of all employees  from jobs_new table who works in the IT department.

create table employees(
emp_id int primary key,
	emp_name varchar(50)
);

insert into employees values(2,'dhanu');
insert into jobs_new values(2,'teacher', 5000, 20000, 2);


SELECT emp_id from employees
where emp_id = (select job_id from jobs_new where dept_id = 2)

select * from jobs_new;