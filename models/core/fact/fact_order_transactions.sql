select P.ORDERID
,P.PAYMENTMETHOD,P.CREATED,P.AMOUNT,O.ORDER_DATE,ORDER_STATUS,
c.first_name,c.last_name

from {{ ref('dim_payments') }} P
JOIN {{ ref('dim_orders') }} O ON P.ORDERID=O.ORDER_ID
JOIN {{ ref('dim_customers') }} c on c.CUSTOMER_ID=O.customer_id