{% macro timestamp_format(orderdate) %}
    --convert raw orderdate string into date, discard the hour, min, sec details
    to_date(
        try_to_timestamp(
            {{ orderdate }}, 
            'MON DD YYYY HH12:MI:SS:FF3AM'
            )
        )
{% endmacro %}