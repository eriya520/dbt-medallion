
    
    

select
    SupplierKey as unique_field,
    count(*) as n_records

from DBT_DB.SNOWDEV.dim_supplier
where SupplierKey is not null
group by SupplierKey
having count(*) > 1


