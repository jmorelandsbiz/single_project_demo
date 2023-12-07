with sources_combined as (
select zip_id, zip, city, state, sourcesystem
from {{ ref('mi_zip') }}
union all
select zip_id, zip, city, state, sourcesystem
from {{ ref('mn_zip')}}
union all
select zip_id, zip, city, state, sourcesystem
from {{ ref('wi_zip')}}
union all
select zip_id, zip, city, state, sourcesystem
from {{ ref('il_zip') }}
union all
select zip_id, zip, city, state, sourcesystem
from {{ ref('in_zip')}}
union all
select zip_id, zip, city, state, sourcesystem
from {{ ref('ia_zip')}}
union all
select zip_id, zip, city, state, sourcesystem
from {{ ref('nd_zip')}}
union all
select zip_id, zip, city, state, sourcesystem
from {{ ref('sd_zip')}}
)

select *, 'Unnecessary' as Unnecessary
from sources_combined