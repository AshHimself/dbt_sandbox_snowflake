with 

source as (

    select * from {{ source('customer_database', 'customers') }}

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