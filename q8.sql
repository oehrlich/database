select moviename, count(distinct adid)*AVG(adcost) as Total_cost
from movies natural join advertisement
group by movieid, moviename
order by Total_cost desc
