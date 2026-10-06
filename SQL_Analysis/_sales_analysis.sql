--Monthly Revenue
SELECT

    DATE_TRUNC(
        'month',
        order_date
    ) AS month,

    ROUND(
        SUM(total_amount),
        2
    ) AS revenue

FROM orders

WHERE status IN ('Completed','Shipped')

GROUP BY month

ORDER BY month;

--Revenue by category
SELECT

    p.category,

    ROUND(
        SUM(
            oi.quantity * oi.unit_price
        ),
        2
    ) AS revenue

FROM order_items oi

JOIN products p
ON oi.product_id = p.product_id

JOIN orders o
ON oi.order_id = o.order_id

WHERE o.status IN ('Completed','Shipped')

GROUP BY p.category

ORDER BY revenue DESC;

--Top 10 Products
SELECT

    p.product_id,
    p.product_name,

    SUM(oi.quantity)
        AS units_sold,

    ROUND(
        SUM(
            oi.quantity * oi.unit_price
        ),
        2
    ) AS revenue

FROM order_items oi

JOIN products p
ON oi.product_id = p.product_id

JOIN orders o
ON oi.order_id = o.order_id

WHERE o.status IN ('Completed','Shipped')

GROUP BY
    p.product_id,
    p.product_name

ORDER BY revenue DESC

LIMIT 10;