
    
    

with __dbt__cte__br_supplier as (
select 
    * 
from dbt_db.staging.SUPPLIER
) select
    Id as unique_field,
    count(*) as n_records

from __dbt__cte__br_supplier
where Id is not null
group by Id
having count(*) > 1


