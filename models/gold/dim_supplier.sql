select
    md5(cast(SupplierId as text)) as SupplierKey,
    SupplierId,
    CompanyName,
    ContactName,
    City,
    Country,
    {{ countrycode_to_phone('Country', 'PhoneDigits')}} as Phone
from {{ ref('sl_supplier') }}
order by SupplierKey