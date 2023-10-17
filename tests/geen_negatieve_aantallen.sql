select *
from {{ ref('opleiding_aantal_inrichtingen') }}
where aantal_inrichtingen < 0