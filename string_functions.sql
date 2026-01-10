-- Topic: String functions (CONCAT, LEFT, RIGHT, SUBSTRING, LOWER)
-- Example: List all names in OCCUPATIONS with first letter of occupation in parentheses

SELECT CONCAT(Name, '(', LEFT(Occupation, 1), ')') AS result
FROM OCCUPATIONS
ORDER BY Name ASC;
