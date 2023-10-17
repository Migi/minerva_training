{{ config(tags=['dagelijks']) }}

select *
from {{ source('mdm', 'opleiding') }}
