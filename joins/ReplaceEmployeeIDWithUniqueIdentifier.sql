-- LeetCode 1378. Replace Employee ID With The Unique Identifier
select p.firstName,
       p.lastName,
       a.city,
       a.state
from Person p 
left join Address a 
on p.personId=a.personId;