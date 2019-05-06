select areacountry, count(adid)
from area natural join advertisement natural join movies
where movieid = 890
group by areacountry
order by count(adid) desc
