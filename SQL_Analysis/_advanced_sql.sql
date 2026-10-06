--CTE
WITH monthly_sales AS
(
    SELECT

        DATE_TRUNC(
            'month',
            order_date
        ) AS month,

        SUM(total_amount) AS revenue

    FROM orders

    WHERE status IN ('Completed','Shipped')

    GROUP BY 1
)

SELECT
    month,
    ROUND(revenue,2) AS revenue

FROM monthly_sales

ORDER BY month;

--Month-over-month growth
WITH monthly_sales AS
(
    SELECT

        DATE_TRUNC(
            'month',
            order_date
        ) AS month,

        SUM(total_amount) AS revenue

    FROM orders

    WHERE status IN ('Completed','Shipped')

    GROUP BY 1
),

comparison AS
(
    SELECT

        month,
        revenue,

        LAG(revenue)
        OVER (
            ORDER BY month
        ) AS previous_month

    FROM monthly_sales
)

SELECT

    month,

    ROUND(revenue,2)
        AS revenue,

    ROUND(previous_month,2)
        AS previous_month,

    ROUND(
        (
            (revenue - previous_month)
            / NULLIF(previous_month,0)
        ) * 100,
        2
    ) AS mom_growth_percentage

FROM comparison

ORDER BY month;

--Customer ranking
WITH customer_sales AS
(
    SELECT

        c.customer_id,
        c.customer_name,

        SUM(o.total_amount)
            AS revenue

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

    ROUND(revenue,2)
        AS revenue,

    RANK()
    OVER (
        ORDER BY revenue DESC
    ) AS customer_rank

FROM customer_sales

ORDER BY customer_rank;

--Running revenue
WITH daily_sales AS
(
    SELECT

        order_date,

        SUM(total_amount)
            AS daily_revenue

    FROM orders

    WHERE status IN ('Completed','Shipped')

    GROUP BY order_date
)

SELECT

    order_date,

    ROUND(daily_revenue,2)
        AS daily_revenue,

    ROUND(
        SUM(daily_revenue)
        OVER (
            ORDER BY order_date
        ),
        2
    ) AS running_revenue

FROM daily_sales

ORDER BY order_date;