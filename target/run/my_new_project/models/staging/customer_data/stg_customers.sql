
  create or replace  view test_dbt.public.stg_customers  as (
    with 

source as (

    select * from test_raw.public.customers

),

cleaned as (
    
    select

    customerid AS customer_id, 
    contactname,
    contacttitle AS title,
    country,
    city
            
    from source

)

select * from cleaned
  );
