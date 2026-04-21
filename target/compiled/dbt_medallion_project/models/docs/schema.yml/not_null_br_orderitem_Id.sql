
    
    



with __dbt__cte__br_orderitem as (
select 
    * 
from dbt_db.staging.ORDERITEM
) select *
from __dbt__cte__br_orderitem
where Id is null


