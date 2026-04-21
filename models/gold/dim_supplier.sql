select
    {{ dbt.hash(['SupplierId']) }} as SupplierKey,
    SupplierId,
    CompanyName,
    ContactName,
    City,
    Country,
    {{ countrycode_to_phone('Country', 'PhoneDigits')}} as Phone
from {{ ref('sl_supplier') }}
order by SupplierKey