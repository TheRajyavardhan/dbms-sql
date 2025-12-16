-- Problem:
-- Create a users table and fetch all records

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name TEXT,
    age INT
);

INSERT INTO users (name, age) VALUES
('Alice', 22),
('Bob', 25);

SELECT * FROM users;
