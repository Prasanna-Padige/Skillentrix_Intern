SELECT

    payment_method,

    COUNT(*) AS transactions,

    ROUND(
        SUM(amount),
        2
    ) AS total_amount

FROM payments

GROUP BY payment_method

ORDER BY total_amount DESC;

--payment status
SELECT

    payment_status,

    COUNT(*) AS transactions,

    ROUND(
        SUM(amount),
        2
    ) AS amount

FROM payments

GROUP BY payment_status;