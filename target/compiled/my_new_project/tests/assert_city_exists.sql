-- The city perth must exist in RAW or fail
select
    city
from test_dbt.public.stg_customers
WHERE city = "perth"