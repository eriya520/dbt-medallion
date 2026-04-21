
    
    

select
    ProductId as unique_field,
    count(*) as n_records

from DBT_DB.SNOWDEV.sl_product
where ProductId is not null
group by ProductId
having count(*) > 1


