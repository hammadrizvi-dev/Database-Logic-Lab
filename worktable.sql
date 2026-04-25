-- Renaming a Table
RENAME TABLE users TO customers;

RENAME TABLE customers TO users;

--Altering a Table
ALTER TABLE users ADD COLUMN phone_number VARCHAR(10);
ALTER TABLE users DROP COLUMN phone_number;
ALTER TABLE users MODIFY COLUMN name VARCHAR(150) NOT NULL;

-- moving a column
ALTER TABLE users MODIFY COLUMN email VARCHAR(100) UNIQUE NOT NULL AFTER name;