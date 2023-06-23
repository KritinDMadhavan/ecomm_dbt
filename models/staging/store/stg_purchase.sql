with source as (

    select * from {{ source('public','purchase_data') }}
),

products_purchase as (

    select
        customer_id,
        purchase_id,
        product_id,
        quantity

    from purchase_data

)

select * from products_purchase