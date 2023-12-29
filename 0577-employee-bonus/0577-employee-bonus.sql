# Write your MySQL query statement below
SELECT e.name, b.bonus 
FROM Employee as e
LEFT JOIN Bonus as B
ON e.empId = b.empID
WHERE b.bonus<1000 OR b.bonus IS NULL