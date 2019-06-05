select areacountry, count(adid)
from area natural join adforarea natural join advertisement natural join movies
where areacountry = 'Sweden'
group by areacountry
order by count(adid) desc
