select
    md5(cast(ProductId as text)) as ProductKey,
    ProductId,
    ProductName,
    SupplierId,
    UnitPrice,
    Package,
    IsDiscontinued
from  {{ ref('sl_product') }}
order by ProductKey