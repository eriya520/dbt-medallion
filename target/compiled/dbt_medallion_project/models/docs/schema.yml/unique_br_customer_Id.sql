
    
    

with __dbt__cte__br_customer as (
select 
    * 
from dbt_db.staging.CUSTOMER
) select
    Id as unique_field,
    count(*) as n_records

from __dbt__cte__br_customer
where Id is not null
group by Id
having count(*) > 1


