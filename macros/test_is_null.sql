{% test is_null(model, column_name) %}

    select *
    from {{ model }}
    where {{ column_name }} is not null

{% endtest %}
