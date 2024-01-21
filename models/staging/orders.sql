with cte_ORDERS as (
select ID as ORDER_ID,user_id as customer_id,ORDER_DATE,status ORDER_STATUS from raw.jaffle_shop.ORDERS
)
select * from cte_ORDERS