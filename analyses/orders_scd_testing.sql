update jaffle_shop.orders
set _ETL_LOADED_AT=current_timestamp,
status='completed'
where Id=1;

select distinct status from jaffle_shop.orders
where Id=1;

select * from PC_DBT_DB.DBT_HISTORY.orders_hist
where Id=1;