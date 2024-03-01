-- CREATE TABLE student
-- (student_id SERIAL PRIMARY KEY,
-- 	first_name VARCHAR(200),
--  last_name VARCHAR(200),
--  homeroom_number INTEGER,
--  phone VARCHAR(50) unique, 
--  email VARCHAR(50) unique,
--  garduation_year int);


-- CREATE TABLE teacher
-- (teacher_id SERIAL PRIMARY KEY,
--  first_name VARCHAR(200),
--  last_name VARCHAR(200),
--  homeroom_number INT,
--  department VARCHAR(50),
--  email VARCHAR(50) UNIQUE,
--  phone VARCHAR(50) unique); 


-- INSERT INTO student 
-- VALUES	
-- 	   (1, 'Rahul', 'Galande', 5,7775551234,
-- 		'Rahul.galande@gmail.com',2023
-- 	   );
	   

-- INSERT INTO teacher
-- VALUES 
-- 	( 
-- 		1,'Chandrashekhar','Gogte',5, 'Biology',
-- 		'Chandrashekhar.gogte@gmail.com',
-- 		'7775554321'
-- 	);


-- CREATE TABLE EMPLOYEES(
-- 	emp_id SERIAL PRIMARY KEY,
-- 	FIRST_NAME VARCHAR(50) NOT NULL,
-- 	LAST_NAME VARCHAR(50) NOT NULL,
-- 	BIRTHDATE DATE CHECK (BIRTHDATE > '1900-01-01'),
-- 	HIRE_DATE DATE CHECK(HIRE_DATE > BIRTHDATE),
-- 	SALARY INTEGER CHECK (SALARY > 0));



-- SELECT * FROM EMPLOYEES;

INSERT INTO EMPLOYEES(FIRST_NAME,LAST_NAME,BIRTHDATE,HIRE_DATE,SALARY)
VALUES
	( 'Jose',
	  'Portilla',
	  '1999-11-03',
	 '2010-01-01',7000000);
	
INSERT INTO EMPLOYEES(FIRST_NAME,LAST_NAME,BIRTHDATE,HIRE_DATE,SALARY)
VALUES
	( 'Samy',
	  'Jayn',
	  '1999-11-03',
	 '2010-01-01',9000000);


	