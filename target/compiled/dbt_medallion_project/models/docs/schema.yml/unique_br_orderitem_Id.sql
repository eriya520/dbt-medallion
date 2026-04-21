
    
    

with __dbt__cte__br_orderitem as (
select 
    * 
from dbt_db.staging.ORDERITEM
) select
    Id as unique_field,
    count(*) as n_records

from __dbt__cte__br_orderitem
where Id is not null
group by Id
having count(*) > 1


