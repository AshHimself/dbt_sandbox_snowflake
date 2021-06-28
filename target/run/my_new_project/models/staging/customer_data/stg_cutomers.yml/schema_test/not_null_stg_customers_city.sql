select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select *
from test_dbt.public.stg_customers
where city is null



      
    ) dbt_internal_test