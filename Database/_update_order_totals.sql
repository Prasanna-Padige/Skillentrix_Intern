UPDATE orders o

SET total_amount = x.total_amount

FROM
(
    SELECT
        order_id,
        ROUND(
            SUM(quantity * unit_price),
            2
        ) AS total_amount

    FROM order_items

    GROUP BY order_id
) x

WHERE o.order_id = x.order_id;