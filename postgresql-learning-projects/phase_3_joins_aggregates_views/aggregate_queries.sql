SELECT book_id, COUNT(*) AS times_borrowed
FROM borrowing_history
GROUP BY book_id
ORDER BY times_borrowed DESC;
