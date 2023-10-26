with postal as (select * from {{ source("zip", "county_zip") }}),
m_address as (select * from {{ source("address", "adf_usa")}})
select HASH(zip) as zip_id, zip, usps_zip_pref_city as city, usps_zip_pref_state as state, max(ma4.State) as SourceSystem
from postal p
    join m_address ma on p.zip = ma.zipcode
    join m_address ma2 on ma2.zipcode = ma.zipcode
    join m_address ma3 on ma3.zipcode = ma2.zipcode
    join m_address ma4 on ma4.zipcode = ma3.zipcode
where usps_zip_pref_state = 'MN'
group by 2,3,4

/*union all
select HASH(zip) as zip_id, zip, usps_zip_pref_city as city, usps_zip_pref_state as state, 'Minnesota' as SourceSystem
from postal
where usps_zip_pref_state = 'MN'
group by 2,3,4 */