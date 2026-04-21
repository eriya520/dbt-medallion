
    
    

select
    OrderId as unique_field,
    count(*) as n_records

from DBT_DB.SNOWDEV.sl_order
where OrderId is not null
group by OrderId
having count(*) > 1


