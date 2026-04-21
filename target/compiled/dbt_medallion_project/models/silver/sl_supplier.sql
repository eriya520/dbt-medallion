with __dbt__cte__br_supplier as (
select 
    * 
from dbt_db.staging.SUPPLIER
) -- remove any heading/tailing whitespace in company/contact names
select
    Id as SupplierId,
    trim(CompanyName) as CompanyName,
    trim(ContactName) as ContactName,
    City,
    Country,
    
    -- remove all non-digit characters from phone/fax number
    regexp_replace(Phone, '[^0-9]', '')
 as PhoneDigits --normalize to digits only
from __dbt__cte__br_supplier