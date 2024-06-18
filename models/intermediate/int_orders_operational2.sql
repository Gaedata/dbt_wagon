SELECT
orders_id,
date_date,
SUM(revenue),
SUM(qty),
SUM(purchase_cost),
SUM(margin),
SUM(margin+shipping_fee-logcost-ship_cost) as operational
FROM {{ref("int_orders_margin2")}}
JOIN
{{ref("stg_raw__ship")}}
USING(orders_id)
GROUP BY orders_id, date_date
ORDER BY orders_id DESC