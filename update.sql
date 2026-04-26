-- Basic Syntax
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;

-- Example
UPDATE users
SET name ='Alica'
WHERE id =1;

-- Update Multiple Columns
UPDATE users
SET name ='Robert', email = 'robert@gmail.com'
WHERE id = 2;

-- Update
UPDATE users
SET salary = 70000
WHERE id = 4;

UPDATE users
SET name = 'Aisha Khan'
WHERE email = 'alice@example.com';

UPDATE users
SET salary = salary + 10000
WHERE salary < 60000;

UPDATE users
SET gender = 'Other'
WHERE name = 'Robert';






