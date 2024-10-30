# QUERY 4

SELECT I.Department, SUM(S.Revenue) AS Total_Revenue
FROM Sales S
JOIN Items I ON S.Item_id = I.Item_id
WHERE YEAR(S.Date) = 2022
GROUP BY I.Department
HAVING Total_Revenue < 600;