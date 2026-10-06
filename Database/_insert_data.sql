INSERT INTO customers
(
    customer_id,
    customer_name,
    email,
    city,
    signup_date
)

SELECT
    i,
    'Customer ' || i,
    'customer' || i || '@gmail.com',

    CASE
        WHEN i % 10 = 0 THEN 'Hyderabad'
        WHEN i % 10 = 1 THEN 'Bangalore'
        WHEN i % 10 = 2 THEN 'Chennai'
        WHEN i % 10 = 3 THEN 'Mumbai'
        WHEN i % 10 = 4 THEN 'Delhi'
        WHEN i % 10 = 5 THEN 'Pune'
        WHEN i % 10 = 6 THEN 'Kolkata'
        WHEN i % 10 = 7 THEN 'Ahmedabad'
        WHEN i % 10 = 8 THEN 'Jaipur'
        ELSE 'Vijayawada'
    END,

    DATE '2023-01-01'
        + (i % 900)

FROM generate_series(1,1000) AS i;

INSERT INTO products
(
    product_id,
    product_name,
    category,
    price,
    cost,
    stock
)

SELECT
    i,
    'Product ' || i,

    CASE
        WHEN i % 5 = 0 THEN 'Electronics'
        WHEN i % 5 = 1 THEN 'Clothing'
        WHEN i % 5 = 2 THEN 'Home & Kitchen'
        WHEN i % 5 = 3 THEN 'Beauty'
        ELSE 'Sports'
    END,

    ROUND(
        (500 + (i % 4500))::numeric,
        2
    ),

    ROUND(
        (500 + (i % 4500))
        * (0.50 + ((i % 20) / 100.0)),
        2
    ),

    50 + (i % 450)

FROM generate_series(1,100) AS i;

INSERT INTO orders
(
    order_id,
    customer_id,
    order_date,
    status,
    total_amount
)

SELECT
    i,

    ((i - 1) % 1000) + 1,

    DATE '2024-01-01'
        + (i % 730),

    CASE
        WHEN i % 20 < 13 THEN 'Completed'
        WHEN i % 20 < 17 THEN 'Shipped'
        WHEN i % 20 < 19 THEN 'Pending'
        ELSE 'Cancelled'
    END,

    0

FROM generate_series(1,5000) AS i;

INSERT INTO order_items
(
    order_item_id,
    order_id,
    product_id,
    quantity,
    unit_price
)

SELECT
    i,

    ((i - 1) % 5000) + 1,

    ((i * 7) % 100) + 1,

    ((i * 3) % 5) + 1,

    p.price

FROM generate_series(1,12000) AS i

JOIN products p
ON p.product_id = ((i * 7) % 100) + 1;

