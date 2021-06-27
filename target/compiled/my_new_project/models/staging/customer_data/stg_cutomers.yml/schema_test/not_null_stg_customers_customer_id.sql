
    
    



select count(*) as validation_errors
from test_dbt.public.stg_customers
where customer_id is null


