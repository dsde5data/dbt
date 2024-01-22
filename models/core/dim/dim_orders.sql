with cte_orders as
(select * from {{ ref('stg_orders') }})
select * from cte_orders