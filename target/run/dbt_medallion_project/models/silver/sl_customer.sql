
  create or replace   view DBT_DB.SNOWDEV.sl_customer
  
  
  
  
  as (
    with __dbt__cte__br_customer as (
select 
    * 
from dbt_db.staging.CUSTOMER
) -- cleanning any leading/tailing whitespace in names, normalize email to lowercase
select
    Id as CustomerId,
    trim(FirstName) as FirstName,
    trim(LastName) as LastName,
    City,
    Country,
    regexp_replace('Phone', '[^0-9]', '') as PhoneDigits, --normalize to digits only
from __dbt__cte__br_customer
  );

