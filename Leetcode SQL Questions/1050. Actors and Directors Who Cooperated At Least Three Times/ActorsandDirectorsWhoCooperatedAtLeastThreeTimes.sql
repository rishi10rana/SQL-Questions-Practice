# Write your MySQL query statement below

# simple group by using two columns like a pair and count occurances of pair
SELECT actor_id, director_id
FROM ActorDirector
GROUP BY actor_id, director_id
HAVING COUNT(timestamp) >= 3;