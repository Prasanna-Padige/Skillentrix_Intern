--Total Revenue
SELECT
    ROUND(SUM(total_amount),2) AS total_revenue
FROM orders
WHERE status IN ('Completed','Shipped');

--Total Orders
SELECT
    COUNT(*) AS total_orders
FROM orders;

--Total customers
SELECT
    COUNT(*) AS total_customers
FROM customers;

--Average order value
SELECT
    ROUND(AVG(total_amount),2)
        AS average_order_value
FROM orders
WHERE status IN ('Completed','Shipped');

--Order by status
SELECT
    status,
    COUNT(*) AS order_count
FROM orders
GROUP BY status
ORDER BY order_count DESC;

--Revenue by city
SELECT
    c.city,

    ROUND(
        SUM(o.total_amount),
        2
    ) AS revenue

FROM customers c

JOIN orders o
ON c.customer_id = o.customer_id

WHERE o.status IN ('Completed','Shipped')

GROUP BY c.city

ORDER BY revenue DESC;