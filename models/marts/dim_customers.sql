{{ config(alias='DIM_CUSTOMERS') }}


SELECT
    CUSTOMER_ID,
    CUSTOMER_NAME,
    CUSTOMER_EMAIL,
    CUSTOMER_ADDRESS,
    SIGNUP_DATE
FROM {{ ref('stg_customers') }}