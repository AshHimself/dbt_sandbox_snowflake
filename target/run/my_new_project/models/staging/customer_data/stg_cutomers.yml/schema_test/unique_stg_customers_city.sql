select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    city,
    count(*) as n_records

from test_dbt.public.stg_customers
where city is not null
group by city
having count(*) > 1



      
    ) dbt_internal_test