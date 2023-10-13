select zip_id, zip, city, state, sourcesystem
from {{ ref('upper_midwest') }}
union all
select zip_id, zip, city, state, sourcesystem
from {{ ref('other')}}
