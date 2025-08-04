SELECT m.name, b.title, bh.borrow_date
FROM borrowing_history bh
JOIN members m ON bh.member_id = m.member_id
JOIN books b ON bh.book_id = b.book_id;
