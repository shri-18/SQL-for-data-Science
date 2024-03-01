-- ALTER CLAUSE
--- The alter clause allows for changes to an existing table structure such as:
----- Adding, Dropping, or Remaining columns
----- Changing a columns data type
----- Set DEFAULT values For a column
----- Add CHECK constraints
----- Rename table.

-- GENERAL SYNTAX:
----- ALTER TABLE table_name ACTION

-- Removing Columns
----- ALTER TABLE table_name
----- ALTER COLUMN COL_NMAE
----- SET DEFAULT value


CREATE TABLE information(
   info_id SERIAL PRIMARY KEY,
   title VARCHAR(500) NOT NULL,
   person VARCHAR(50) NOT NULL UNIQUE);
   
SELECT  * FROM information;   

ALTER TABLE information 
RENAME TO new_info;

SELECT * FROM new_info;

ALTER TABLE new_info 
RENAME COLUMN person to people;


INSERT INTO new_info(title)
VALUES('some new title');

ALTER TABLE new_info
ALTER COLUMN people
DROP NOT NULL;

INSERT INTO new_info(title)
VALUES('some new title');

SELECT * FROM new_info;