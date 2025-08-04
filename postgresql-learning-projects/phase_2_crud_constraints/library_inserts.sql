-- Insert members
INSERT INTO members (name, email) VALUES
('Alice', 'alice@example.com'),
('Bob', 'bob@example.com');

-- Insert books
INSERT INTO books (title, author, category) VALUES
('1984', 'George Orwell', 'Fiction'),
('Deep Learning', 'Ian Goodfellow', 'Education');

-- Insert borrowing history
INSERT INTO borrowing_history (member_id, book_id, borrow_date) VALUES
(1, 1, '2025-08-01'),
(1, 2, '2025-08-02');
