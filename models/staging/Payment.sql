with cte_PAYMENT as (
select * from RAW.STRIPE.PAYMENT 
)
select * from cte_PAYMENT 
where AMOUNT<>0 and status<>'fail'