--Product revenue+profit
SELECT

    p.product_id,
    p.product_name,
    p.category,

    SUM(oi.quantity)
        AS units_sold,

    ROUND(
        SUM(
            oi.quantity * oi.unit_price
        ),
        2
    ) AS revenue,

    ROUND(
        SUM(
            oi.quantity *
            (oi.unit_price - p.cost)
        ),
        2
    ) AS profit

FROM products p

JOIN order_items oi
ON p.product_id = oi.product_id

JOIN orders o
ON oi.order_id = o.order_id

WHERE o.status IN ('Completed','Shipped')

GROUP BY

    p.product_id,
    p.product_name,
    p.category

ORDER BY profit DESC;