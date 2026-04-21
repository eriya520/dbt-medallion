with base_dates as (
    select distinct
        OrderDateFormatted as Date
    from {{ ref('sl_order') }}
    where OrderDateFormatted is not null
)
select
    {{ dbt.hash(['Date']) }} as DateKey,
    Date,
    extract(day from Date) as Day,
    extract(month from Date) as Month,
    extract(year from Date) as Year,
    extract(quarter from Date) as Quarter
from base_dates
order by DateKey