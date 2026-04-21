select
    {{ dbt.hash(['ProductId']) }} as ProductKey,
    ProductId,
    ProductName,
    SupplierId,
    UnitPrice,
    Package,
    IsDiscontinued
from  {{ ref('sl_product') }}
order by ProductKey