# Write your MySQL query statement below

# using cross join
/*
select t1.num as ConsecutiveNums
from Logs t1,Logs t2, Logs t3 
where t2.id - t1.id = 1 and
t3.id - t2.id = 1 and
t1.num = t2.num and
t1.num = t3.num
group by t1.num;
*/

# using lead() window function
with cte as
(select *, lead(num,1) over(order by id) as 'next_1', lead(num, 2) over(order by id) as 'next_2'
from Logs)

select distinct num as 'ConsecutiveNums' from cte where num = next_1 and num = next_2;