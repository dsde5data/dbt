---select order_date,count(*) from orders group by order_date
insert into jaffle_shop.ORDERS (ID,USER_ID,ORDER_DATE,status,_etl_loaded_at)
SELECT 
    ID+1,
    USER_ID,
    DATEADD(DAY, 1, TO_DATE(ORDER_DATE)) AS modified_order_date,
    STATUS,
    CURRENT_TIMESTAMP() AS current_time
FROM 
    jaffle_shop.ORDERS
WHERE 
    TO_DATE(ORDER_DATE) >= (select max(ORDER_DATE) from jaffle_shop.ORDERS);

    insert into stripe.payment(ID, ORDERID, PAYMENTMETHOD, STATUS, AMOUNT, CREATED, _BATCHED_AT)
select a.Id+1, b.OrderID, PAYMENTMETHOD, STATUS, AMOUNT, ORDER_DATE, current_timestamp() from 
stripe.payment a cross
join (select ID as OrderID,ORDER_DATE from jaffle_shop.orders ORDER BY 
    ORDER_DATE DESC
LIMIT 1) b 
where ID=99;