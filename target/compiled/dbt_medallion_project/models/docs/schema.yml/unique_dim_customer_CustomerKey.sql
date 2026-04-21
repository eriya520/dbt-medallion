
    
    

select
    CustomerKey as unique_field,
    count(*) as n_records

from DBT_DB.SNOWDEV.dim_customer
where CustomerKey is not null
group by CustomerKey
having count(*) > 1


