SELECT orders_id, date_date, sales.pdt_id,
 quantity * CAST(purchase_price AS FLOAT64) AS purchase_cost,
revenue,
revenue - (quantity * CAST(purchase_price AS FLOAT64)) AS margin, 
quantity,
{{ margin_percent('revenue', 'quantity * CAST(purchase_price AS FLOAT64)')}} AS margin_percent
FROM {{ ref('stg_raw__sales')}} AS sales
LEFT JOIN {{ ref('stg_raw__product')}} AS products
ON sales.pdt_id = products.products_id