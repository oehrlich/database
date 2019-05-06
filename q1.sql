select b2.cityid, count(b2.branchid) as num_of_branch
from branch b1, branch b2
where b1.cityid = b2.cityid and b1.branchid != b2.branchid
group by b1.cityid, b2.cityid
having count(b2.branchid) > 100
