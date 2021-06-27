
  create or replace  view test_dbt.public.customer_orders  as (
    with cte_customer as (
  
  select 
    customerid AS customer_id, 
    contactname,
    contacttitle AS title,
    country,
    city
  FROM test_raw.public.customers
  ), 
  
  cte_orders as (
  select 
    orderid AS order_id,
    customerid AS customer_id,
    orderdate AS order_date  
    from test_raw.public.orders
  ),
  cte_customer_orders as (
  select 
    customer_id,
    min(order_date) AS first_order,
    max(order_date) latest_order
    from cte_orders
    group by 1
  ),
  
  final as (
    
    select order_id, cte_customer_orders.customer_id, first_order, latest_order from cte_orders
    inner join cte_customer_orders on cte_orders.customer_id = cte_customer_orders.customer_id
  
  )


select * from final
  );
