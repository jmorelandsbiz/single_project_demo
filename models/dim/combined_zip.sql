select top 20 zip_id, zip, city, state, sourcesystem
from {{ ref('mi_zip') }}
union all
select top 20 zip_id, zip, city, state, sourcesystem
from {{ ref('mn_zip')}}
union all
select top 20 zip_id, zip, city, state, sourcesystem
from {{ ref('wi_zip')}}