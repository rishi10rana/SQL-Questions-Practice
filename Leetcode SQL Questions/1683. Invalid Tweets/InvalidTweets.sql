# Write your MySQL query statement below

# simple use char_length() fucntion to check length for a specified column value per row
SELECT tweet_id
FROM Tweets
WHERE char_length(content) > 15;