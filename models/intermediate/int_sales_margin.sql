WITH test as (SELECT 
date_date,
orders_id,
products_id,
revenue,
quantity,
purchase_price,
quantity*purchase_price as purchase_cost


FROM 
{{ref("stg_raw__sales")}}
JOIN
{{ref("stg_raw__product")}}
USING (products_id)
)

SELECT
date_date,
orders_id,
products_id,
revenue,
quantity,
purchase_price,
revenue-purchase_cost as margin
FROM test