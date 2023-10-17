{% test is_kleiner_dan(model, column_name, drempel) %}
select * from {{ model }}
where {{ column_name }} >= {{ drempel }}
{% endtest %}