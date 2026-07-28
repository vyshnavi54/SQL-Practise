-- LeetCode 197. Rising Temperature
select  w.id 
from Weather w join Weather t 
on datediff(w.recordDate,t.recordDate)=1 
where w.temperature>t.temperature;