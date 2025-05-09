-- SQL script to extract customer data for churn analysis

SELECT
    customer_id,
    signup_date,
    last_purchase_date,
    total_orders,
    total_spent,
    (total_spent / NULLIF(total_orders, 0)) AS avg_order_value,
    country,
    gender
FROM
    ecommerce_customers;
