select
    {{ dbt.hash(['o.OrderId', 'oi.OrderItemId']) }} as SalesKeys,
    o.OrderId,
    oi.OrderItemId,
    c.CustomerKey,
    p.ProductKey,
    s.SupplierKey,
    d.DateKey,
    oi.Quantity,
    oi.UnitPrice,
    oi.Quantity * oi.UnitPrice as TotalAmount

from {{ ref('sl_orderitem') }} oi
join {{ ref('sl_order') }} o
  on oi.OrderId = o.OrderId

join {{ ref('dim_product') }} p
  on oi.ProductId = p.ProductId

join {{ ref('dim_date') }} d
  on o.OrderDateFormatted = d.Date
  
join {{ ref('dim_supplier')}} s
 on p.SupplierId = s.SupplierId

join {{ ref('dim_customer') }} c
 on o.CustomerId = c.CustomerId