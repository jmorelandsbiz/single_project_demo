select zip_id, zip, city, state, sourcesystem, Unnecessary
from {{ ref('upper_midwest') }}
union all
select zip_id, zip, city, state, sourcesystem, Unnecessary
from {{ ref('other')}}
