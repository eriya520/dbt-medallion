
    
    

select
    ProductKey as unique_field,
    count(*) as n_records

from DBT_DB.SNOWDEV.dim_product
where ProductKey is not null
group by ProductKey
having count(*) > 1


