with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select
        date_date,
        orders_id,
        pdt_id AS products_id,
        revenue,
        quantity,
        CONCAT(pdt_id, '-', orders_id) AS pk

    from source

)

select * from renamed
