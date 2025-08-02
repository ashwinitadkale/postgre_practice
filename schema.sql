-- Drop tables if they already exist
DROP TABLE IF EXISTS transactions, borrowing_history, members, books;

-- Books table
CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255),
    genre VARCHAR(100),
    total_copies INT CHECK (total_copies >= 0),
    available_copies INT CHECK (available_copies >= 0)
);

-- Members table
CREATE TABLE members (
    member_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    phone VARCHAR(15),
    membership_date DATE DEFAULT CURRENT_DATE
);

-- Borrowing History table
CREATE TABLE borrowing_history (
    history_id SERIAL PRIMARY KEY,
    member_id INT REFERENCES members(member_id) ON DELETE CASCADE,
    book_id INT REFERENCES books(book_id) ON DELETE CASCADE,
    borrow_date DATE NOT NULL,
    return_date DATE,
    returned BOOLEAN DEFAULT FALSE
);

-- Transactions (Fine payments, lost books, etc.)
CREATE TABLE transactions (
    transaction_id SERIAL PRIMARY KEY,
    member_id INT REFERENCES members(member_id),
    amount DECIMAL(10, 2) CHECK (amount >= 0),
    transaction_type VARCHAR(50) CHECK (transaction_type IN ('fine', 'payment', 'lost')),
    transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
