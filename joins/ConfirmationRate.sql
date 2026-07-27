-- Leetcode 1934. Confirmation Rate
select s.user_id, 
round(
    ifnull(
        sum(case 
                when c.action='confirmed' 
                then 1 
                else 0 
            end)    
        /
        nullif(count(action),0)
    ,0)
,2)
as confirmation_rate from Signups s
left join Confirmations c 
on s.user_id=c.user_id 
group by s.user_id;