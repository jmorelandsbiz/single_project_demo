with sources_combined as (
select zip_id, zip, city, state, sourcesystem
from {{ ref('az_zip') }}
union all
select zip_id, zip, city, state, sourcesystem
from {{ ref('ca_zip')}}
union all
select zip_id, zip, city, state, sourcesystem
from {{ ref('co_zip')}}
union all
select zip_id, zip, city, state, sourcesystem
from {{ ref('fl_zip') }}
union all
select zip_id, zip, city, state, sourcesystem
from {{ ref('ny_zip')}}
union all
select zip_id, zip, city, state, sourcesystem
from {{ ref('tx_zip')}}
union all
select zip_id, zip, city, state, sourcesystem
from {{ ref('wa_zip')}}
)

select *, 'Unnecessary' as Unnecessary
from sources_combined