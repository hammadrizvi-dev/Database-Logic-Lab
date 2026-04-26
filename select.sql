SELECT * FROM users;
SELECT name, email FROM users;

-- Basic Synatx --
SELECT column1, column2 FROM table_name;
SELECT * FROM users;

-- Filtering Rows --
SELECT * FROM users WHERE gender = 'Male' ;

SELECT * FROM users WHERE gender != 'Female';
-- or
SELECT * FROM users WHERE gender <> 'Female';

-- Greater than and Less than --
SELECT *FROM users WHERE date_of_birth < '1995-01-01';
SELECT * FROM users WHERE id >= 3;

-- NULL Values --
SELECT * FROM users WHERE email IS NULL;
SELECT * FROM users WHERE email IS NOT NULL;

-- BETWEEN Operator --
SELECT * FROM users WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31';

-- IN Operator --
SELECT * FROM users WHERE gender IN ('Male', 'Other');
SELECT * FROM users WHERE id IN (1, 3, 5);

-- LIKE Operator -- Like operator is used for pattern matching.
SELECT * FROM users WHERE name LIKE 'A%'; 
SELECT * FROM users WHERE name LIKE '%son';

SELECT * FROM users WHERE name LIKE '%li%';

-- And & Or --
SELECT * FROM users WHERE gender = 'Female' AND date_of_birth > '1990-01-01';
SELECT * FROM users WHERE gender = 'Male' OR date_of_birth < '1990-01-01';

-- Order By --
SELECT * FROM users ORDER BY name ASC;
SELECT * FROM users ORDER BY date_of_birth DESC;

SELECT * FROM users ORDER  BY gender ASC;

-- Limit --
SELECT * FROM users LIMIT 5;

SELECT * FROM users LIMIT 10 OFFSET 5; -- Skip first 5 rows, then get next 10
SELECT * FROM users LIMIT 5, 10; -- Get 10 rows starting from the 6th row (Same as above)