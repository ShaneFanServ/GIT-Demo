{{ config(alias='STG_PRODUCTS') }}

SELECT
    PRODUCT_ID::VARCHAR       AS PRODUCT_ID,
    PRODUCT_NAME::VARCHAR     AS PRODUCT_NAME,
    CATEGORY::VARCHAR         AS CATEGORY,
    PRICE::NUMBER(10,2)       AS PRICE
FROM {{ source('retails', 'products_raw') }}
WHERE PRODUCT_ID IS NOT NULL