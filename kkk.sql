select movieid, count(adid)
from movies natural join advertisement
where releaseyear = '1990'
group by movieid
order by count(adid) desc
