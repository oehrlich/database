select movieid, count(adid), AVG(adcost)
from movies natural join advertisement
group by movieid
having count(ADID) >= 3 and AVG(adcost) > 50
order by count(ADID) desc
