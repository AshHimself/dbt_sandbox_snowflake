
  create or replace  view test_dbt.public.customer_orders  as (
    with 

customers as (
    select * from test_dbt.public.stg_customers
),

orders as (
    select * from test_dbt.public.stg_orders
),

cte_customer_orders as (
  select 
    customer_id,
    min(order_date) AS first_order,
    max(order_date) latest_order
    from orders
    group by 1
),
  
  final as (
    
    select order_id, cte_customer_orders.customer_id, first_order, latest_order from orders
    inner join cte_customer_orders on orders.customer_id = cte_customer_orders.customer_id
  
  )


select * from final
  );
