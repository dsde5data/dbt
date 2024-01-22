{{
    config(
        materialized='incremental'
    )
}}
with cte_transactions as 
(select * from {{ ref('fact_order_transactions') }}
{% if is_incremental() %}
    -- this filter will only be applied on an incremental run
    where ORDER_DATE > (select max(ORDER_DATE) from {{ this }}) 
{% endif %}

)
select * from cte_transactions
