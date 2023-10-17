{{ config(tags=['maandelijks']) }}

select
  *,

  {{ is_datum_tussen('CURRENT_DATE', 'begindatum', 'einddatum') }}
  as is_huidig

from {{ source('mdm', 'ingerichte_opleiding') }}
