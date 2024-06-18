SELECT
orders_id,
date_date,
SUM(revenue) as revenue,
SUM(qty) as qty,
SUM(purchase_cost) as purchase_cost,
SUM(margin) as margin,
SUM(margin+shipping_fee-logcost-ship_cost) as operational
FROM {{ref("int_orders_margin2")}}
JOIN
{{ref("stg_raw__ship")}}
USING(orders_id)
GROUP BY orders_id, date_date
ORDER BY orders_id DESC
