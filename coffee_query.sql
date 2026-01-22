-- CTE combining 2023-2025 order data
WITH all_orders AS (
	SELECT
		OrderID,
		CustomerID,
		ProductID,
		OrderDate,
		Quantity,
		ROUND(Revenue, 2) AS Revenue,
		ROUND(COGS, 2) AS COGS
	FROM Orders_2023
	UNION ALL
	SELECT
		OrderID,
		CustomerID,
		ProductID,
		OrderDate,
		Quantity,
		ROUND(Revenue, 2) AS Revenue,
		ROUND(COGS, 2) AS COGS
	FROM Orders_2024
	UNION ALL
	SELECT
		OrderID,
		CustomerID,
		ProductID,
		OrderDate,
		Quantity,
		ROUND(Revenue, 2) AS Revenue,
		ROUND(COGS, 2) AS COGS
	FROM Orders_2025
)

-- main dataset query
SELECT
	a.OrderID,
	a.CustomerID,
	c.Region,
	a.ProductID,
	a.OrderDate,
	DATEADD(WEEK, DATEDIFF(WEEK, 0, a.OrderDate), 0) AS WeekDate,
	c.CustomerJoinDate,
	a.Quantity,
	a.Revenue,
	ROUND(CASE WHEN a.Revenue IS NULL THEN p.Price * a.Quantity ELSE a.Revenue END, 2) AS UpdatedRevenue,
	a.Revenue - a.COGS AS Profit,
	a.COGS,
	p.ProductName,
	p.ProductCategory,
	p.Price,
	p.Base_Cost
FROM all_orders a
JOIN Customers c
	ON a.CustomerID = c.CustomerID
LEFT JOIN products p
	ON a.ProductID = p.ProductID;

