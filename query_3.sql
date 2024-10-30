# QUERY 3

SELECT COUNT(DISTINCT Customer_id) AS Total_Customers,
       AVG(Total_Revenue) AS Avg_Amount_Spent_Per_Customer
FROM (
    SELECT Customer_id, SUM(Revenue) AS Total_Revenue
    FROM Sales
    WHERE Date BETWEEN '2023-01-01' AND '2023-01-31'
    GROUP BY Customer_id
) AS Customer_Revenue;