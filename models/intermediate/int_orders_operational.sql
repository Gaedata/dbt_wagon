SELECT
orders_id,
date_date,
revenue,
qty,
purchase_cost,
margin
(margin+shipping_fee)-(logcost-ship_cost) as Operational margin
FROM {{ref("int_orders_operational")}}
JOIN
{{ref("stg_raw__ship")}}
USING(orders_id)