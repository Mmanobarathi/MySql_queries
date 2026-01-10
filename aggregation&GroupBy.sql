-- Topic: Aggregation and GROUP BY
-- Example: Count occurrences of each occupation and format the output

SELECT CONCAT(
    'There are a total of ',
    occupation_count,
    ' ',
    LOWER(Occupation),
    's.'
) AS result
FROM (
    SELECT LOWER(Occupation) AS Occupation, COUNT(*) AS occupation_count
    FROM OCCUPATIONS
    GROUP BY LOWER(Occupation)
) AS t
ORDER BY occupation_count ASC, Occupation ASC;
