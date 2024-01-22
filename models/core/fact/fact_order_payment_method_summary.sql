{%- set PAYMENT_METHODS=['coupon','credit_card','bank_transfer','gift_card'] -%}
with payments as (
    select * from {{ ref('stg_payment') }}
)
select 
orderID,
{% for item in PAYMENT_METHODS -%}
sum(case when PAYMENTMETHOD='{{item}}' then amount else 0 end ) {{item}}_amount {% if not loop.last %}, {% endif %} 
{% endfor %} 
 from payments
 group by orderID