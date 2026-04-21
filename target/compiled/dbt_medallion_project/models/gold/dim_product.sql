select
    md5(cast(['ProductId'] as TEXT)) as ProductKey,
    ProductId,
    ProductName,
    SupplierId,
    UnitPrice,
    Package,
    IsDiscontinued
from  DBT_DB.SNOWDEV.sl_product
order by ProductKey