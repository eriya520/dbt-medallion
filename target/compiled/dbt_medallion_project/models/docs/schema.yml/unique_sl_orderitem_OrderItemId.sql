
    
    

select
    OrderItemId as unique_field,
    count(*) as n_records

from DBT_DB.SNOWDEV.sl_orderitem
where OrderItemId is not null
group by OrderItemId
having count(*) > 1


