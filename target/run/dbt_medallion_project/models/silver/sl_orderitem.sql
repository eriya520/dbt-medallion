
  create or replace   view DBT_DB.SNOWDEV.sl_orderitem
  
  
  
  
  as (
    with __dbt__cte__br_orderitem as (
select 
    * 
from dbt_db.staging.ORDERITEM
) select
    Id as OrderItemId,
    OrderId,
    ProductId,
    UnitPrice,
    Quantity
from __dbt__cte__br_orderitem
  );

