
    
    

select
    SupplierId as unique_field,
    count(*) as n_records

from DBT_DB.SNOWDEV.sl_supplier
where SupplierId is not null
group by SupplierId
having count(*) > 1


