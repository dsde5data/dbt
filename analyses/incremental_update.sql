update jaffle_shop.orders
set user_id=82
where order_date='12-APR-2018';

select * from jaffle_shop.orders
where order_date='12-APR-2018';

select * from pc_dbt_db.dbt_ashahbaz_bi.order_transactions
where order_date='12-APR-2018'
