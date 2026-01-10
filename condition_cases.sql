-- Topic: Conditional logic using CASE WHEN
-- Example: Identify type of triangle using side lengths A, B, C

SELECT CASE
         WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'
         WHEN A = B AND B = C THEN 'Equilateral'
         WHEN A = B OR B = C OR A = C THEN 'Isosceles'
         ELSE 'Scalene'
       END AS triangle_type
FROM TRIANGLES;
