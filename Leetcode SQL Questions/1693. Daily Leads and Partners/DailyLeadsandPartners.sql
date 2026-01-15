# Write your MySQL query statement below

# simple group by based on two pairs column (date_id and make_name)
SELECT date_id, make_name, COUNT(DISTINCT lead_id) AS 'unique_leads',
COUNT(DISTINCT partner_id) AS 'unique_partners'
FROM DailySales
GROUP BY date_id, make_name;