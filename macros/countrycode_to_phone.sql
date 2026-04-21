{%macro countrycode_to_phone(country, phone_digits)%}
--map country to contry code
    case
        when {{ country }} = 'Denmark'      then '+45'  || {{ phone_digits }}
        when {{ country }} = 'France'       then '+33'  || {{ phone_digits }}
        when {{ country }} = 'Germany'      then '+49'  || {{ phone_digits }}
        when {{ country }} = 'Finland'      then '+358' || {{ phone_digits }}
        when {{ country }} = 'Brazil'       then '+55'  || {{ phone_digits }}
        when {{ country }} = 'Italy'        then '+39'  || {{ phone_digits }}
        when {{ country }} = 'Sweden'       then '+46'  || {{ phone_digits }}
        when {{ country }} = 'Switzerland'  then '+41'  || {{ phone_digits }}
        when {{ country }} = 'Argentina'    then '+54'  || {{ phone_digits }}
        when {{ country }} = 'Mexico'       then '+52'  || {{ phone_digits }}
        when {{ country }} = 'Spain'        then '+34'  || {{ phone_digits }}
        when {{ country }} = 'Poland'       then '+48'  || {{ phone_digits }}
        when {{ country }} = 'Venezuela'    then '+58'  || {{ phone_digits }}
        when {{ country }} = 'Portugal'     then '+351' || {{ phone_digits }}
        when {{ country }} = 'Canada'       then '+1'   || {{ phone_digits }}
        when {{ country }} = 'Norway'       then '+47'  || {{ phone_digits }}
        when {{ country }} = 'Ireland'      then '+353' || {{ phone_digits }}
        when {{ country }} = 'Belgiumm'     then '+32'  || {{ phone_digits }}
        when {{ country }} = 'Australia'    then '+61'  || {{ phone_digits }}
        when {{ country }} = 'Japan'        then '+81'  || {{ phone_digits }}
        when {{ country }} = 'Netherlands'  then '+31'  || {{ phone_digits }}
        when {{ country }} = 'Singapore'    then '+65'  || {{ phone_digits }}
        when {{ country }} = 'Sweden'       then '+46'  || {{ phone_digits }}
        when {{ country }} = 'UK'           then '+44'  || {{ phone_digits }}
        when {{ country }} = 'USA'          then '+1'   || {{ phone_digits }}
        else null
    end
{% endmacro %}