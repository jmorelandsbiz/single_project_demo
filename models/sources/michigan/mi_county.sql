with county as (select * from {{ source('zip', 'county') }})
select HASH(GEOID) as CountyID, USPS as State, GEOID as CountyGeoCode, Name, POP10 as Population2010, 'Michigan' as SourceSystem
from county
where State = 'MI'