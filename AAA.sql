select rating, count(movieid)
from area natural join adforarea natural join advertisement natural join movies
where rating = 1.83
group by rating
order by count(adid) desc
