USE PremierProducts;
-- Name: Mangkhales Ngamjaruskotchakorn
-- ID: 6188055 Section: 1 Date: 3/2/2021
-- Lab07 SQL SET Operations

-- Q1: Write a query that returns OrderNum and Customer's name (Using both APPLY and JOIN operator)
-- Q1: Solution 1
SELECT o.OrderNum, c.CustomerName
FROM Orders o 
JOIN Customer c ON o.CustomerNum = c.CustomerNum;

-- Q1: Solution 2
SELECT o.OrderNum, C.CustomerName
FROM Orders o
CROSS APPLY
(
	SELECT CustomerName
	FROM Customer c
	WHERE c.CustomerNum = o.CustomerNum) AS C;

-- Q2: Write a query to select all customer information with OrderNum (Using APPLY operator)
-- Q2: Solution 1
SELECT *
FROM Customer c
OUTER APPLY
(
SELECT OrderNum
FROM Orders o
WHERE o.CustomerNum = c.CustomerNum
) AS O;


-- Q3: List all Order Number of the CustomerNumber greater than 400 that appear in OrderLine (except the Order Number 21617 ) using SET Operation
SELECT o.OrderNum
FROM Orders o
JOIN Customer c ON o.CustomerNum = c.CustomerNum
JOIN OrderLine ol ON ol.OrderNum = o.OrderNum
WHERE c.CustomerNum > 400
EXCEPT
SELECT OrderNum 
FROM OrderLine
WHERE OrderNum = 21617;

-- Q3: List all Order Number of the CustomerNumber greater than 400 that appear in OrderLine (except the Order Number 21617 ) using SET Operation
-- This is AI teach me kub
SELECT o.OrderNum
FROM Orders o
--JOIN Customer c ON o.CustomerNum = c.CustomerNum
--JOIN OrderLine ol ON ol.OrderNum = o.OrderNum
WHERE CustomerNum > 400
INTERSECT
SELECT OrderNum 
FROM OrderLine
WHERE OrderLine.OrderNum <> 21617