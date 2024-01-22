with cte_payments as
(select * from {{ ref('stg_payment') }})
select * from cte_payments