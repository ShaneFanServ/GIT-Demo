{{ config(alias='STG_CUSTOMERS') }}

SELECT
    CUSTOMER_ID::VARCHAR       AS CUSTOMER_ID,
    NAME::VARCHAR              AS CUSTOMER_NAME,
    EMAIL::VARCHAR             AS CUSTOMER_EMAIL,
    ADDRESS::VARCHAR           AS CUSTOMER_ADDRESS,
    SIGNUP_DATE::DATE          AS SIGNUP_DATE
FROM {{ source('retails', 'customers_raw') }}
WHERE CUSTOMER_ID IS NOT NULL