
select
    {{ dbt.hash(['CustomerId']) }}as CustomerKey,
    CustomerId,
    FirstName,
    LastName,
    City,
    Country,
    {{ countrycode_to_phone('Country','PhoneDigits') }} as Phone -- use macro to add countrycode to phone
from {{ ref('sl_customer') }}
order by CustomerKey