select areaid, count(branchid)/count(distinct cityid) as Avg_branch_for_city
from area natural join city natural join branch
group by areaid
order by Avg_branch_for_city desc
