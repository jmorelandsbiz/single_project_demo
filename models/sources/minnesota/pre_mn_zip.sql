with postal as (select * from {{ source("zip", "county_zip") }})
select HASH(zip) as zip_id, zip, usps_zip_pref_city as city, usps_zip_pref_state as state, 'Minnesota' as SourceSystem
from postal
where usps_zip_pref_state = 'MN'
group by 2,3,4