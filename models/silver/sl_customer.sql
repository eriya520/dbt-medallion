-- cleanning any leading/tailing whitespace in names, normalize email to lowercase
select
    Id as CustomerId,
    trim(FirstName) as FirstName,
    trim(LastName) as LastName,
    City,
    Country,
    regexp_replace('Phone', '[^0-9]', '') as PhoneDigits, --normalize to digits only
from {{ ref('br_customer') }}