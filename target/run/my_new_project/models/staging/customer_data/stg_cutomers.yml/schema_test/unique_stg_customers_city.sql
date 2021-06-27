select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from test_dbt.public_dbt_test__audit.unique_stg_customers_city
    
      
    ) dbt_internal_test