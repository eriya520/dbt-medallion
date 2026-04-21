
    
    

with __dbt__cte__br_product as (
select 
    * 
from dbt_db.staging.PRODUCT
) select
    Id as unique_field,
    count(*) as n_records

from __dbt__cte__br_product
where Id is not null
group by Id
having count(*) > 1


