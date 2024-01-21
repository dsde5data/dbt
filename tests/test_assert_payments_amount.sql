with cte_payments as 
(
    select * from 
 {{ ref('Payment') }}
    )
select orderid,sum(amount) from cte_payments
group by orderid
having sum(amount)<=0
