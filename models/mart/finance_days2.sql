SELECT
date_date,
COUNT(orders_id) as nb_transactions,
SUM(revenue) as revenue,
SUM(revenue)/COUNT(orders_id) as average_basket,
SUM(margin) as margin,
SUM(operational) as operational_margin
FROM {{ref("int_orders_operational2")}}

GROUP BY date_date
ORDER BY date_date DESC
