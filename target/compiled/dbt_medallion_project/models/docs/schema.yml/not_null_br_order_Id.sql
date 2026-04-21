
    
    



with __dbt__cte__br_order as (
select 
    *
from dbt_db.staging."ORDER"
) select *
from __dbt__cte__br_order
where Id is null


