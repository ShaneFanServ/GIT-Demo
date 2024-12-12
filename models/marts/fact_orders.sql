{{ config(alias='FACT_ORDERS') }}

WITH orders AS (
    SELECT
        ORDER_ID,
        ORDER_DATE,
        CUSTOMER_ID,
        PRODUCT_ID,
        QUANTITY
    FROM {{ ref('stg_orders') }}
)

SELECT
    o.ORDER_ID,
    o.ORDER_DATE,
    o.CUSTOMER_ID,
    o.PRODUCT_ID,
    o.QUANTITY,
    (o.QUANTITY * p.PRICE) AS TOTAL_PRICE
FROM orders o
JOIN {{ ref('dim_products') }} p ON o.PRODUCT_ID = p.PRODUCT_ID