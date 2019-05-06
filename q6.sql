select movieid, count(adid)
from movies natural join advertisement
where releaseyear = '1998'
group by movieid
having count(adid) > 3
order by count(adid) desc
