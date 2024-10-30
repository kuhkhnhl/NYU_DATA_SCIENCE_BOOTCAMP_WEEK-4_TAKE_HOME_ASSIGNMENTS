# QUERY 2

SELECT COUNT(S.Order_id) AS Total_Orders_John_Doe
FROM Sales S
JOIN Customers C ON S.Customer_id = C.Customer_id
WHERE S.Date = '2023-03-18' AND C.First_name = 'John' AND C.Last_name = 'Doe';