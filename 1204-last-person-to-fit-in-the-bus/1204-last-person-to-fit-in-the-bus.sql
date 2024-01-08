# Write your MySQL query statement below
SELECT person_name
FROM Queue q1
WHERE (
    SELECT SUM(q2.weight)
    FROM Queue q2
    WHERE q2.turn <= q1.turn
) <= 1000
ORDER BY turn DESC
LIMIT 1;
