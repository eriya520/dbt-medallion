
  
    

create or replace transient table DBT_DB.SNOWDEV.fact_sales
    
    
    
    as (select
    md5(cast(['o.OrderId', 'oi.OrderItemId'] as TEXT)) as SalesKeys,
    o.OrderId,
    oi.OrderItemId,
    c.CustomerKey,
    p.ProductKey,
    s.SupplierKey,
    d.DateKey,
    oi.Quantity,
    oi.UnitPrice,
    oi.Quantity * oi.UnitPrice as TotalAmount

from DBT_DB.SNOWDEV.sl_orderitem oi
join DBT_DB.SNOWDEV.sl_order o
  on oi.OrderId = o.OrderId

join DBT_DB.SNOWDEV.dim_product p
  on oi.ProductId = p.ProductId

join DBT_DB.SNOWDEV.dim_date d
  on o.OrderDateFormatted = d.Date
  
join DBT_DB.SNOWDEV.dim_supplier s
 on p.SupplierId = s.SupplierId

join DBT_DB.SNOWDEV.dim_customer c
 on o.CustomerId = c.CustomerId
    )
;


  