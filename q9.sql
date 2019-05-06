select areaid, count(distinct cityid)
from area natural join city
group by areaid
order by count(distinct cityid) desc
