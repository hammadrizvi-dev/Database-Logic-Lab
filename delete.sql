-- basic syntax
DELETE FROM table_name
WHERE condition;

DELETE FROM users
WHERE id = 3;

-- dlete multiple rows
DELETE FROM users
WHERE salary < 65000;

-- delete all rows but keep the table structure
DELETE FROM users;

-- Drop the table
DROP TABLE users;