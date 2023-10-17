{% macro is_datum_tussen(datum, begindatum, einddatum) %}
case
    when {{ datum }} < {{ begindatum }} then 'N'
    when {{ datum }} > {{ einddatum }} then 'N'
    else 'J'
end
{% endmacro %}