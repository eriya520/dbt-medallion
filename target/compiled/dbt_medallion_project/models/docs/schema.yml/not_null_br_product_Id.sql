
    
    



with __dbt__cte__br_product as (
select 
    * 
from dbt_db.staging.PRODUCT
) select *
from __dbt__cte__br_product
where Id is null


