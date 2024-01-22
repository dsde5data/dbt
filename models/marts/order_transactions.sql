with cte_transactions as 
(select * from {{ ref('fact_order_transactions') }})
select * from cte_transactions