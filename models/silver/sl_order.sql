-- use macro to convert orderdate to timestamp
select
    Id as OrderId,
     {{ timestamp_format('OrderDate') }}as OrderDateFormatted, --convert string to date
    CustomerId,
    TotalAmount
from {{ ref('br_order') }}