-- The city perth must exist in RAW or fail
select
    city
from {{ ref('stg_customers' )}}
WHERE city = "perth"