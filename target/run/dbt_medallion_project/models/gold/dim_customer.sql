
  
    

create or replace transient table DBT_DB.SNOWDEV.dim_customer
    
    
    
    as (select
    md5(cast(['CustomerId'] as TEXT))as CustomerKey,
    CustomerId,
    FirstName,
    LastName,
    City,
    Country,
    
--map country to contry code
    case
        when Country = 'Denmark'      then '+45'  || PhoneDigits
        when Country = 'France'       then '+33'  || PhoneDigits
        when Country = 'Germany'      then '+49'  || PhoneDigits
        when Country = 'Finland'      then '+358' || PhoneDigits
        when Country = 'Brazil'       then '+55'  || PhoneDigits
        when Country = 'Italy'        then '+39'  || PhoneDigits
        when Country = 'Sweden'       then '+46'  || PhoneDigits
        when Country = 'Switzerland'  then '+41'  || PhoneDigits
        when Country = 'Argentina'    then '+54'  || PhoneDigits
        when Country = 'Mexico'       then '+52'  || PhoneDigits
        when Country = 'Spain'        then '+34'  || PhoneDigits
        when Country = 'Poland'       then '+48'  || PhoneDigits
        when Country = 'Venezuela'    then '+58'  || PhoneDigits
        when Country = 'Portugal'     then '+351' || PhoneDigits
        when Country = 'Canada'       then '+1'   || PhoneDigits
        when Country = 'Norway'       then '+47'  || PhoneDigits
        when Country = 'Ireland'      then '+353' || PhoneDigits
        when Country = 'Belgiumm'     then '+32'  || PhoneDigits
        when Country = 'Australia'    then '+61'  || PhoneDigits
        when Country = 'Japan'        then '+81'  || PhoneDigits
        when Country = 'Netherlands'  then '+31'  || PhoneDigits
        when Country = 'Singapore'    then '+65'  || PhoneDigits
        when Country = 'Sweden'       then '+46'  || PhoneDigits
        when Country = 'UK'           then '+44'  || PhoneDigits
        when Country = 'USA'          then '+1'   || PhoneDigits
        else null
    end
 as Phone -- use macro to add countrycode to phone
from DBT_DB.SNOWDEV.sl_customer
order by CustomerKey
    )
;


  