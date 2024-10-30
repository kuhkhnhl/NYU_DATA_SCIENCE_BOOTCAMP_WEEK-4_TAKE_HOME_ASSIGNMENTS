# QUERY 6

WITH MaxRevenueOrder AS (
    SELECT Order_id
    FROM Sales
    WHERE Revenue = (SELECT MAX(Revenue) FROM Sales)
)
SELECT *
FROM Sales
WHERE Order_id IN (SELECT Order_id FROM MaxRevenueOrder);