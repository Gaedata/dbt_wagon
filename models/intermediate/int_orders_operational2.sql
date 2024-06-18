SELECT
orders_id,
date_date,
(margin+shipping_fee)-(logcost-ship_cost) as Operational margin,
revenue,
qty,
purchase_cost,
margin
FROM {{ref("int_orders_margin2")}}
JOIN
{{ref("stg_raw__ship")}}
USING(orders_id)