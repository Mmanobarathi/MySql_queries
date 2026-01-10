-- Topic: LIKE pattern matching
-- Example: Cities starting and ending with a vowel

SELECT DISTINCT city
FROM STATION
WHERE (city LIKE 'a%' OR city LIKE 'e%' OR city LIKE 'i%' OR city LIKE 'o%' OR city LIKE 'u%')
  AND (city LIKE '%a' OR city LIKE '%e' OR city LIKE '%i' OR city LIKE '%o' OR city LIKE '%u');
