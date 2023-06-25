
with Purchase_order as (

    select * from {{ ref('dim_purchase')}}

)

SELECT product_id, SUM(total_price) AS total_amt
FROM Purchase_order
GROUP BY product_id
HAVING SUM(total_price) < 0
