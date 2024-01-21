with cte_ORDERS as (
select ID as ORDER_ID,user_id as customer_id,ORDER_DATE,status ORDER_STATUS,_etl_loaded_at from {{ source('jaffle_shop', 'orders') }}
)
select * from cte_ORDERS