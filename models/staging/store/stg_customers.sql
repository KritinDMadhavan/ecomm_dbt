with source as (

    select * from {{ source('public','customer_profile') }}
),

customers as (

    select
        customer_id,
        name as fullname,
        age,
        gender,
        location

    from customer_profile

)

select * from customers