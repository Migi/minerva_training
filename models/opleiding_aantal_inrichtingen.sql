select
  opl.opleidingid,

  count(inr.opleidingid) as aantal_inrichtingen,

  {% if var("schooljaar") == "onbekend" %}
    sum(case when inr.schooljaar is null then 1 else 0 end)
  {% else %}
    sum(case when inr.schooljaar = '{{ var("schooljaar") }}' then 1 else 0 end)
  {% endif %}
  as aantal_in_gegeven_schooljaar,

  {% for schooljaar in [2017,2018,2019,2020,2021,2022] %}
    sum(case when inr.schooljaar = '{{ schooljaar }}' then 1 else 0 end) as "aantal_in_{{schooljaar}}"
    {% if not loop.last %},{% endif %}
  {% endfor %}

from {{ ref('opleiding') }} opl

left join {{ ref('ingerichte_opleiding') }} inr
  on opl.opleidingid = inr.opleidingid

group by opl.opleidingid
