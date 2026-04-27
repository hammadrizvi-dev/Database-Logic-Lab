-- string functions

--Length of a string
SELECT name, LENGTH(name) AS name_Length FROM users;

-- Lower and Upper case
SELECT name, LOWER(name) AS lower_name, UPPER(name) AS upper_name FROM users;

--Concatenate strings
SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM users;

-- Substring
SELECT name, SUBSTRING(name, 1, 3) AS name_substring FROM users
WHERE id = 1;

-- Replace
SELECT name, REPLACE(name, 'a', 'o') AS replaced_name FROM users
WHERE id = 1;

