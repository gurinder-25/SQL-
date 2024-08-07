SELECT 
CASE
    WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'NOT A TRIANGLE'
    WHEN A = B AND B = C THEN 'EQUILATERAL'
    WHEN A = B OR A = C OR B = C THEN 'ISOSCELES'
    ELSE 'SCALENE'
END AS TRIANGLE_SIDES
FROM TRIANGLES;
