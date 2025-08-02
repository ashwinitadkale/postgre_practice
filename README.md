# 📚 Library Management System (PostgreSQL)

This is a database-only Library Management System built in PostgreSQL. It models core operations for managing books, members, borrow/return logs, and transactions.

## 🛠️ Technologies
- PostgreSQL
- SQL (DDL, DML, constraints, joins)

## 🧱 Tables
- `books`: Track all books and availability
- `members`: Library members
- `borrowing_history`: Tracks borrow/return status
- `transactions`: For fines or lost book payments

## ⚙️ Features
- Full CRUD operations
- Constraints: FK, CHECK, NOT NULL, UNIQUE
- Referential integrity using `ON DELETE CASCADE`
- Sample data insert + common queries

## 🗂️ Project Structure
- `schema.sql`: Table creation scripts
- `insert_data.sql`: Sample entries
- `queries.sql`: Useful SQL statements



