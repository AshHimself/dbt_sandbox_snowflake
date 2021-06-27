
  create or replace  view test_dbt.public.stg_orders  as (
    with 

source as (

    select * from test_raw.public.orders

),

cleaned as (
    
    select

    orderid AS order_id,
    customerid AS customer_id,
    orderdate AS order_date  
            
    from source

)

select * from cleaned
  );
