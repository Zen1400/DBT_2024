SELECT orders_id, date_date, sales.products_id, quantity * CAST(purchase_price AS FLOAT64) AS purchase_cost, revenue,
revenue - (quantity * CAST(purchase_price AS FLOAT64)) AS margin, quantity
FROM {{ ref('stg_raw__sales')}} AS sales
LEFT JOIN {{ ref('stg_raw__product')}}
USING(products_id)