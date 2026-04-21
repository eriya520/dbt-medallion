select
    Id as OrderItemId,
    OrderId,
    ProductId,
    UnitPrice,
    Quantity
from {{ ref('br_orderitem') }}