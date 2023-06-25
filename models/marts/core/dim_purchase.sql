
with customers as (

    select * from {{ ref('stg_customers')}}

),

fact_products as (

    select * from {{ ref('fct_product_p') }}

),

dim_customers as (

    select
        customers.customer_id,
        customers.fullname,
        customers.age,
        customers.gender,
        customers.location,
        fact_products.product_id,
        fact_products.purchase_id,
        fact_products.product_name,
        fact_products.quantity,
        fact_products.total_price
    
    from
        customers
    
    join fact_products on customers.customer_id = fact_products.customer_id


)
select * from dim_customers