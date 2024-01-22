{{
    config(
        materialized='incremental',
        unique_key='ORDERID'  
    )
}}
with cte_transactions as 
(select * from {{ ref('fact_order_transactions') }}
{% if is_incremental() %}
    -- this filter will only be applied on an incremental run
    -- unique cause statements to be merge instead of update
    where ORDER_DATE > (select max(ORDER_DATE)-3 from {{ this }}) 
{% endif %}

)
select * from cte_transactions
