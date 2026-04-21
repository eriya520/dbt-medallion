
  create or replace   view DBT_DB.SNOWDEV.sl_order
  
  
  
  
  as (
    with __dbt__cte__br_order as (
select 
    *
from dbt_db.staging."ORDER"
) -- use macro to convert orderdate to timestamp
select
    Id as OrderId,
     
    --convert raw orderdate string into date, discard the hour, min, sec details
    to_date(
        try_to_timestamp(
            OrderDate, 
            'MON DD YYYY HH12:MI:SS:FF3AM'
            )
        )
as OrderDateFormatted, --convert string to date
    CustomerId,
    TotalAmount
from __dbt__cte__br_order
  );

