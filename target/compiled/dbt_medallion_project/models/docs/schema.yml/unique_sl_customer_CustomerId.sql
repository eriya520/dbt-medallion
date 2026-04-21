
    
    

select
    CustomerId as unique_field,
    count(*) as n_records

from DBT_DB.SNOWDEV.sl_customer
where CustomerId is not null
group by CustomerId
having count(*) > 1


