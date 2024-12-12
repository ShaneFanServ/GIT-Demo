{{ config(alias='DIM_PRODUCTS') }}

SELECT
    PRODUCT_ID,
    PRODUCT_NAME,
    CATEGORY,
    PRICE
FROM {{ ref('stg_products') }}