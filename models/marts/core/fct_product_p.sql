
with products as (

    select * from {{ ref('stg_products')}}

),

purchases as (

    select * from {{ ref('stg_purchase') }}

),


stage as (

    select 
        purchases.customer_id,
        purchases.product_id,
        purchases.purchase_id,
        products.product_name,
        purchases.quantity,
        purchases.quantity * products.price as total_price
    from
        purchases
    
    join products on purchases.product_id = products.product_id
)

select * from stage