create view count_ad_by_area as
select areaid, areaname, count(distinct adid)
from adforarea natural join advertisement natural join area
group by areaid, areaname
