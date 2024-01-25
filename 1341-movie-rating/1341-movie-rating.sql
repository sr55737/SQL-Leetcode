# Write your MySQL query statement below

    (SELECT u.name AS results
    FROM MovieRating mr
    LEFT JOIN Users u ON mr.user_id = u.user_id
    GROUP BY u.user_id
    ORDER BY COUNT(mr.user_id) DESC, u.name
    LIMIT 1)
    
    UNION ALL
    
    (SELECT m.title AS results
    FROM MovieRating mr
    LEFT JOIN Movies m ON mr.movie_id = m.movie_id
    WHERE YEAR(created_at) = 2020 and MONTH(created_at) = 2
    GROUP BY mr.movie_id
    ORDER BY AVG(mr.rating) DESC, m.title
    LIMIT 1);