with cte_PAYMENT as (
select * from {{ source('stripe', 'payment') }}
)
select * from cte_PAYMENT 
where AMOUNT<>0 and status<>'fail'