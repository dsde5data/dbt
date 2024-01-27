
with final as (

    select
        a.customer_id,
        a.first_name,
        a.last_name,
        c.first_order_date,
        c.most_recent_order_date,
        coalesce(c.number_of_orders, 0) as number_of_orders

    from {{ ref('dim_customers') }} a

    left join {{ ref('fact_customer_orders') }} c using (customer_id)

)

select * from final