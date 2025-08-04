CREATE VIEW member_borrow_stats AS
SELECT m.name, COUNT(bh.transaction_id) AS total_borrowed
FROM members m
LEFT JOIN borrowing_history bh ON m.member_id = bh.member_id
GROUP BY m.name;
