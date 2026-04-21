
    
    

select
    SalesKey as unique_field,
    count(*) as n_records

from DBT_DB.SNOWDEV.fact_sales
where SalesKey is not null
group by SalesKey
having count(*) > 1


