-- CTE: Top Borrowers
WITH borrow_counts AS (
    SELECT member_id, COUNT(*) AS total_borrowed
    FROM borrowing_history
    GROUP BY member_id
)
SELECT m.name, bc.total_borrowed
FROM borrow_counts bc
JOIN members m ON bc.member_id = m.member_id
ORDER BY bc.total_borrowed DESC;
