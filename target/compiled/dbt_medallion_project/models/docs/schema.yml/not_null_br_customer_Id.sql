
    
    



with __dbt__cte__br_customer as (
select 
    * 
from dbt_db.staging.CUSTOMER
) select *
from __dbt__cte__br_customer
where Id is null


