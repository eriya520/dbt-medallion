-- trim any leading/tailing white space in product_name and category

select
    Id as ProductId,
    trim(ProductName) as ProductName,
    SupplierID,
    UnitPrice,
    trim(Package) as Package,
    IsDiscontinued
from {{ ref('br_product') }}