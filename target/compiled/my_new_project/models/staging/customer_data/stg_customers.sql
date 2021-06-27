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