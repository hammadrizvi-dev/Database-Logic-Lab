-- Mathematical functions in SQL

-- Absolute value
SELECT ABS(-5) AS absolute_value;

-- Power

SELECT POWER(2, 3) AS power_result;

-- Square root
SELECT SQRT(16) AS square_root;
-- Rounding
SELECT ROUND(3.14159, 2) AS rounded_value;

-- Ceiling and Floor
SELECT CEILING(3.2) AS ceiling_value, FLOOR(3.8) AS floor_value;

-- Modulo
SELECT 10 % 3 AS modulo_result;

-- Random number
SELECT RAND() AS random_number;

-- Trigonometric functions
SELECT SIN(PI() / 2) AS sine_value, COS(0) AS cosine_value, TAN(PI() / 4) AS tangent_value;

