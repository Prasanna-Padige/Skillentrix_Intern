CREATE OR REPLACE VIEW vw_customer_summary AS

SELECT

    c.customer_id,

    c.customer_name,

    c.city,

    COUNT(o.order_id)
        AS total_orders,

    ROUND(
        SUM(o.total_amount),
        2
    ) AS total_revenue,

    ROUND(
        AVG(o.total_amount),
        2
    ) AS average_order_value

FROM customers c

JOIN orders o
ON c.customer_id = o.customer_id

WHERE o.status IN ('Completed','Shipped')

GROUP BY

    c.customer_id,
    c.customer_name,
    c.city;