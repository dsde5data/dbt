with cte_stg_customers as (
    select * from {{ ref('stg_customers') }}
)
select * from cte_stg_customers