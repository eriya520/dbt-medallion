
    
    

select
    DateKey as unique_field,
    count(*) as n_records

from DBT_DB.SNOWDEV.dim_date
where DateKey is not null
group by DateKey
having count(*) > 1


