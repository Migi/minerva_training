{% test is_niet_leeg(model) %}
select count(*) from {{ model }}
having count(*) = 0 -- als de count 0 is dan moet de test falen
{% endtest %}