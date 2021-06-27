
    
    

select
    city,
    count(*) as n_records

from test_dbt.public.stg_customers
where city is not null
group by city
having count(*) > 1


