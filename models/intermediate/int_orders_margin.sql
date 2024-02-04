SELECT orders_id, date_date, SUM(revenue) AS revenue, SUM(purchase_cost) AS purchase_cost,
SUM(quantity) AS quantity,
SUM(margin) AS margin
FROM {{ref("int_sales_margin")}}
GROUP BY orders_id, date_date