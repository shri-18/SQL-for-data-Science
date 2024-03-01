/*
Data Types: 
  Boolean: True or False
  Character: char, varchar, and text
  Numeric: Interger and Floating point number
  Temporal: Date, time etc
  UUID: Universally Unique Identifiers
  Array: Stones an array of string, numbers, etc
  JSON: Store key value pair
  
Constraints:
  
*/
/*
CREATE TABLE Table_NAME (name varchar(20) primary key, Sirname varchar(20) );
insert into Table_NAME VALUES('Shrikant', 'Ilhe'),('Dhananjay', 'Jadhav');
SELECT * FROM Table_NAME;
*/

--account table creation
create table account(
user_id serial primary key,
username varchar(50) unique not null,
password varchar(50) not null,
email varchar(250) unique not null,
created_on timestamp not null,
last_login timestamp);

--job
CREATE TABLE JOB
(job_id SERIAL PRIMARY KEY,
 job_name VARCHAR(200) UNIQUE NOT NULL);
 
--account_job
CREATE TABLE account_job
(USER_ID INTEGER REFERENCES account(user_id),
job_id INTEGER REFERENCES job(job_id),
hire_date TIMESTAMP);

INSERT INTO account VALUES
(1,'shrikant','shri@7474','shrikantilhe@gmail.com',CURRENT_TIMESTAMP);
INSERT INTO account VALUES
(2,'Dhanabhau','Dhana@7474','dhana@gmail.com',CURRENT_TIMESTAMP);

INSERT INTO job VALUES (1,'Data scientist');

INSERT INTO account_job VALUES(1,1,CURRENT_TIMESTAMP);


SELECT * FROM account_job;

--UPDATE



