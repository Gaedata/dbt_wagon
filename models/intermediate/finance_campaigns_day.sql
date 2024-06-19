WITH compute_ads_margin as (SELECT *
FROM {{ref("int_campaigns_day")}}
FULL OUTER JOIN 
{{ref("finance_days2")}}
USING(date_date)
)

SELECT
date_date,
ROUND((operational_margin-ads_cost),1) as ads_margin,
average_basket,
operational_margin,
ads_cost,
ads_impression,
ads_clicks,
nb_transactions,
revenue,
margin
FROM compute_ads_margin
ORDER BY date_date DESC