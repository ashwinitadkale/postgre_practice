-- Create members table
CREATE TABLE members (
    member_id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT UNIQUE,
    join_date DATE DEFAULT CURRENT_DATE
);

-- Create books table
CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    author TEXT,
    category TEXT,
    available BOOLEAN DEFAULT TRUE
);

-- Create borrowing history
CREATE TABLE borrowing_history (
    transaction_id SERIAL PRIMARY KEY,
    member_id INT REFERENCES members(member_id),
    book_id INT REFERENCES books(book_id),
    borrow_date DATE NOT NULL,
    return_date DATE
);
