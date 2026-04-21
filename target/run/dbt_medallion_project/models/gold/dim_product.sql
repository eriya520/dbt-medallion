
  
    

create or replace transient table DBT_DB.SNOWDEV.dim_product
    
    
    
    as (select
    md5(cast(['ProductId'] as TEXT)) as ProductKey,
    ProductId,
    ProductName,
    SupplierId,
    UnitPrice,
    Package,
    IsDiscontinued
from  DBT_DB.SNOWDEV.sl_product
order by ProductKey
    )
;


  