WITH test_primary as (
{{dbt_utils.union_relations(relations=[ref('stg_raw__adwords'), ref('stg_raw__bing'), ref('stg_raw__criteo'), ref('stg_raw__facebook')]) }}
)
SELECT
CONCAT(date_date,"_",campaign_key) as primary_key_campaign,
*,
FROM test_primary

