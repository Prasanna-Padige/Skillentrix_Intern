--Repeat customers
SELECT
    COUNT(*) AS repeat_customers

FROM
(
    SELECT
        customer_id

    FROM orders

    WHERE status IN ('Completed','Shipped')

    GROUP BY customer_id

    HAVING COUNT(order_id) > 1
) x;

--customer lifetime revenue
SELECT

    c.customer_id,
    c.customer_name,

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
    c.customer_name

ORDER BY total_revenue DESC;

--customer segmentation
WITH customer_sales AS
(
    SELECT

        c.customer_id,
        c.customer_name,

        COUNT(o.order_id)
            AS total_orders,

        SUM(o.total_amount)
            AS total_spent

    FROM customers c

    JOIN orders o
    ON c.customer_id = o.customer_id

    WHERE o.status IN ('Completed','Shipped')

    GROUP BY
        c.customer_id,
        c.customer_name
)

SELECT

    customer_id,
    customer_name,
    total_orders,

    ROUND(total_spent,2)
        AS total_spent,

    CASE

        WHEN total_spent >= 20000
            THEN 'High Value'

        WHEN total_spent >= 10000
            THEN 'Medium Value'

        ELSE 'Low Value'

    END AS customer_segment

FROM customer_sales

ORDER BY total_spent DESC;