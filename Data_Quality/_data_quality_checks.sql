SELECT *
FROM customers
WHERE customer_name IS NULL
   OR email IS NULL
   OR city IS NULL;

SELECT
    email,
    COUNT(*) AS duplicate_count
FROM customers
GROUP BY email
HAVING COUNT(*) > 1;

SELECT *
FROM products
WHERE price <= 0
   OR cost <= 0
   OR cost >= price;

SELECT *
FROM order_items
WHERE quantity <= 0;

SELECT o.*
FROM orders o

LEFT JOIN customers c
ON o.customer_id = c.customer_id

WHERE c.customer_id IS NULL;

SELECT oi.*
FROM order_items oi

LEFT JOIN products p
ON oi.product_id = p.product_id

WHERE p.product_id IS NULL;