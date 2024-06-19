SELECT 
DATE_TRUNC(date_date, MONTH) as datemonth,
ROUND(SUM(ads_margin),1) as ads_margin,
SUM(average_basket) as average_basket
FROM {{ref("finance_campaigns_day")}}
GROUP BY DATE_TRUNC(date_date, MONTH)
ORDER BY 1 DESC