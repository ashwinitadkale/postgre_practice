-- Create a test database
CREATE DATABASE testdb;

-- Connect to testdb and create a table
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    age INT,
    email TEXT UNIQUE
);
