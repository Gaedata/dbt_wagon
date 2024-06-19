SELECT
date_date,
ROUND(SUM(ads_cost),1) as ads_cost,
ROUND(SUM(impression),1) as ads_impression,
ROUND(SUM(click),1) as ads_clicks
FROM {{ref("int_campaigns")}}
GROUP BY date_date