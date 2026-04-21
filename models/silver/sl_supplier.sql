-- remove any heading/tailing whitespace in company/contact names
select
    Id as SupplierId,
    trim(CompanyName) as CompanyName,
    trim(ContactName) as ContactName,
    City,
    Country,
    {{ normalize_to_digits_only('Phone')}} as PhoneDigits --normalize to digits only
from {{ ref('br_supplier') }}