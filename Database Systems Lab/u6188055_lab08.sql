USE PremierProducts;

-- Name: Mangkhales Ngamjaruskotchakorn
-- ID: 6188055 Section: 1 Date: 3/9/2021

-- Q1: Find all parts with a price greater than or equal to average parts price.
SELECT PartNum, Price
FROM Part
WHERE Price >= (
				SELECT AVG(Price)
				FROM Part
				);

-- Q2: Write a query to find the names of all customer who made an order before '2010-10-22'.
SELECT c.CustomerName
FROM Customer c
WHERE EXISTS (
			  SELECT o.CustomerNum
			  FROM Orders o
			  WHERE c.CustomerNum = o.CustomerNum AND o.OrderDate < '2010-10-22'
			  );

-- Q3: Write a query to find the names of the customer who were contacted by Representative named Valerie Kauser.
SELECT c.CustomerName
FROM Customer c
WHERE EXISTS (
			  SELECT r.RepNum
			  FROM Rep r
			  WHERE c.RepNum = r.RepNum AND r.FirstName + ' ' + r.LastName = 'Valerie Kaiser'
			 );

-- Q4: Write a query to find the names and balance of the customer who have a higher balance than the customer whose Name = 'Brookings Direct'.
SELECT CustomerName, Balance
FROM Customer
WHERE Balance > (
				 SELECT Balance
				 FROM Customer
				 WHERE CustomerName = 'Brookings Direct'
				 );