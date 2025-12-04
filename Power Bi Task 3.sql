
drop Table Orders;
Create table Orders (
	State VARCHAR(50),
	City VARCHAR(50),
	Order_Date Date,
	Restaurant VARCHAR(50),	
	Location VARCHAR(50),
	Category VARCHAR(60),
	Dish VARCHAR(200),
	Price Decimal,
	Rating Decimal,
	Rating_Count Int
	)

select * from Orders;

-- Total revenue by State

SELECT state, SUM(price) as total_revenue FROM orders 
GROUP BY state 
ORDER BY total_revenue desc
LIMIT 10;


-- Total Revenue by Months

SELECT DATE_TRUNC('month', order_date) as month, SUM(price) as total_revenue 
FROM orders 
GROUP BY DATE_TRUNC('month', order_date) 
ORDER BY month desc;


-- Mumbai Revenue by Months

SELECT DATE_TRUNC('month', order_date) as month, SUM(price) as total_revenue 
FROM orders 
WHERE state = 'Maharashtra'
GROUP BY DATE_TRUNC('month', order_date) 
ORDER BY month desc;