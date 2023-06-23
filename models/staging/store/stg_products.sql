with source as (

    select * from {{ source('public','product_data') }}
),

products as (

    select
        product_name,
        product_id,
        category,
        price

    from product_data

)

select * from products