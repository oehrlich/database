select areaid, count(adid), AVG(adcost)
from advertisement natural join Adforarea
group by areaid
order by count(adid) desc , AVG(adcost) desc
