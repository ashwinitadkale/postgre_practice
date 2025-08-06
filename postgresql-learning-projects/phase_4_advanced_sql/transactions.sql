-- Transaction Example
BEGIN;

UPDATE books SET available = FALSE WHERE book_id = 1;

INSERT INTO borrowing_history (member_id, book_id, borrow_date)
VALUES (1, 1, CURRENT_DATE);

COMMIT;

-- Use ROLLBACK; if needed
