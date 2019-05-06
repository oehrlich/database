select movieid, count(adid), AVG(adcost)
from (select * from advertisement
where adtype = 'small TV' or adtype = 'big TV' or adtype = 'medium TV')
group by movieid
having count(ADID) >= 3 and AVG(adcost) > 50
