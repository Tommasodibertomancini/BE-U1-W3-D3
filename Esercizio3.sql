-- 1)
SELECT COUNT(*) TotaleOrdini FROM Orders;

-- 2)
SELECT COUNT(*) TotaleClienti FROM Customers;

-- 3)
SELECT COUNT(*) DaLondra FROM Customers
	WHERE City = 'London';

-- 4)
SELECT AVG(Freight) AS AverageTotalTransport
	FROM Orders;

-- 5)
SELECT CustomerID, AVG(Freight) AS AverageTransportBOTTM
	FROM Orders
	GROUP BY CustomerID
	HAVING CustomerID = 'BOTTM';

-- 6)
SELECT CustomerID, SUM(Freight) AS TotalCostPerCustomer
	FROM Orders
	GROUP BY CustomerID;

-- 7)
SELECT City, COUNT(*) AS TotalNumber
	From Customers
	GROUP BY City;

-- 8)
SELECT OrderID, SUM(UnitPrice * Quantity) AS Total
	FROM [Order Details]
	GROUP BY OrderID;

-- 9)
SELECT OrderID, SUM(UnitPrice * Quantity) AS Total
	FROM [Order Details]
	WHERE OrderID = 10248
	GROUP BY OrderID;

-- 10)
SELECT CategoryID, COUNT(*) AS NumberOfProducts
	FROM Products
	GROUP BY CategoryID;

-- 11)
SELECT ShipCountry, COUNT(*) AS NumberOfOrdersPerCountry
	From Orders
	GROUP BY ShipCountry;

-- 12)
SELECT ShipCountry, AVG(Freight) AS NumberOfOrdersPerCountry
	From Orders
	GROUP BY ShipCountry;


