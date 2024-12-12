{{ config(alias='STG_ORDERS') }}

SELECT
    ORDER_ID::VARCHAR         AS ORDER_ID,
    ORDER_DATE::DATE          AS ORDER_DATE,
    CUSTOMER_ID::VARCHAR      AS CUSTOMER_ID,
    PRODUCT_ID::VARCHAR       AS PRODUCT_ID,
    QUANTITY::NUMBER(10,0)    AS QUANTITY
FROM {{ source('retails', 'orders_raw') }}
WHERE ORDER_ID IS NOT NULL