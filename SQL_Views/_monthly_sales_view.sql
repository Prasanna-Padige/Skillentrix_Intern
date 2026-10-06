CREATE OR REPLACE VIEW vw_monthly_sales AS

SELECT

    DATE_TRUNC(
        'month',
        order_date
    ) AS month,

    COUNT(order_id)
        AS total_orders,

    ROUND(
        SUM(total_amount),
        2
    ) AS revenue,

    ROUND(
        AVG(total_amount),
        2
    ) AS average_order_value

FROM orders

WHERE status IN ('Completed','Shipped')

GROUP BY 1;