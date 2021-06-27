with 

source as (

    select * from {{ source('customer_database', 'orders') }}

),

cleaned as (
    
    select

    orderid AS order_id,
    customerid AS customer_id,
    orderdate AS order_date  
            
    from source

)

select * from cleaned