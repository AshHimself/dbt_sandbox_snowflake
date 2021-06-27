
  create or replace  view test_dbt.public.stg_order_details  as (
    with 

source as (

    select * from test_raw.public.order_details

),

cleaned as (
    
    select

    orderid AS order_id,
    productid AS product_id,
    unitprice,
    quantity,
    discount
     
    from source

)

select * from cleaned
  );
