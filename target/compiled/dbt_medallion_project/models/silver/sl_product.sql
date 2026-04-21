with __dbt__cte__br_product as (
select 
    * 
from dbt_db.staging.PRODUCT
) -- trim any leading/tailing white space in product_name and category

select
    Id as ProductId,
    trim(ProductName) as ProductName,
    SupplierID,
    UnitPrice,
    trim(Package) as Package,
    IsDiscontinued
from __dbt__cte__br_product