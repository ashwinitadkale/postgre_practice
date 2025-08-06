-- Window Function: Row number for each borrow
SELECT 
    member_id,
    book_id,
    borrow_date,
    ROW_NUMBER() OVER (PARTITION BY member_id ORDER BY borrow_date) AS borrow_rank
FROM borrowing_history;
