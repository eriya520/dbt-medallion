{% macro normalize_to_digits_only(phone_raw) %}
    -- remove all non-digit characters from phone/fax number
    regexp_replace({{phone_raw}}, '[^0-9]', '')
{% endmacro %}