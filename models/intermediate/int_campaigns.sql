WITH test_primary as (
    
SELECT *
FROM {{ref("stg_raw__adwords")}}
UNION ALL 
SELECT *
FROM {{ref("stg_raw__bing")}}
UNION ALL 
SELECT *
FROM {{ref("stg_raw__criteo")}}
UNION ALL 
SELECT *
FROM {{ref("stg_raw__facebook")}}
)
SELECT
CONCAT(date_date,"_",campaign_key) as primary_key_campaign,
*,
FROM test_primary