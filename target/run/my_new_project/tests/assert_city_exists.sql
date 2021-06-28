select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      -- The city perth must exist in RAW or fail
select
    city
from test_dbt.public.stg_customers
WHERE city = "perth"
      
    ) dbt_internal_test