
    
    



with __dbt__cte__br_supplier as (
select 
    * 
from dbt_db.staging.SUPPLIER
) select *
from __dbt__cte__br_supplier
where Id is null


