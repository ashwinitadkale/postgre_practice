-- Create: Add a new book
INSERT INTO books (title, author, genre, total_copies, available_copies)
VALUES ('New Book', 'Author X', 'Sci-Fi', 2, 2);

-- Read: List all available books
SELECT * FROM books WHERE available_copies > 0;

-- Update: Member email
UPDATE members SET email = 'newemail@example.com' WHERE member_id = 1;

-- Delete: Remove a member
DELETE FROM members WHERE member_id = 2;

SELECT m.name, b.title, h.borrow_date
FROM borrowing_history h
JOIN members m ON h.member_id = m.member_id
JOIN books b ON h.book_id = b.book_id
WHERE h.return_date IS NULL AND h.borrow_date < CURRENT_DATE - INTERVAL '15 days';

