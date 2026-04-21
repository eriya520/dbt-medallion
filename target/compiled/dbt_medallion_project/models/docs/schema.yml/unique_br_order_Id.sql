
    
    

with __dbt__cte__br_order as (
select 
    *
from dbt_db.staging."ORDER"
) select
    Id as unique_field,
    count(*) as n_records

from __dbt__cte__br_order
where Id is not null
group by Id
having count(*) > 1


