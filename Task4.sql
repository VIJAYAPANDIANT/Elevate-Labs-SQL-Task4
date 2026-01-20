CREATE DATABASE task4;
USE task4;

CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    age INT,
    email VARCHAR(100),
    department VARCHAR(50)
);

INSERT INTO students (name, age, email, department) VALUES
('Vijay', 20, 'vijay@gmail.com', 'CSE'),
('Arun', 22, 'arun@yahoo.com', 'ECE'),
('Priya', 21, 'priya@gmail.com', 'CSE'),
('Karthik', 23, NULL, 'MECH'),
('Anu', 19, 'anu@gmail.com', 'IT');

1️--Sort data using ORDER BY (ASC & DESC)
--Ascending (default)
SELECT * FROM students
ORDER BY age ASC;

--Descending
SELECT * FROM students
ORDER BY age DESC;
 
 2️--Apply sorting on multiple columns

--First sorts by department, then by age

SELECT * FROM students
ORDER BY department ASC, age DESC;

3️--Limit results using LIMIT

--Show only top 3 rows

SELECT * FROM students
ORDER BY age DESC
LIMIT 3;

4️--Combine ORDER BY with WHERE

--Students from CSE sorted by age

SELECT * FROM students
WHERE department = 'CSE'
ORDER BY age ASC;

5️--Use OFFSET for pagination

--Page size = 2

-- Page 1
SELECT * FROM students
ORDER BY id
LIMIT 2 OFFSET 0;

-- Page 2
SELECT * FROM students
ORDER BY id
LIMIT 2 OFFSET 2;

6️--Understand performance impact (Interview point)

Sorting on indexed columns is faster(right)
Sorting on large tables without index is slow(wrong)

Example (optional):

CREATE INDEX idx_age ON students(age);

7️--Build a leaderboard-style query

--Oldest students first (like rank list)

SELECT name, age, department
FROM students
ORDER BY age DESC;


--Top 3 leaderboard

SELECT name, age
FROM students
ORDER BY age DESC
LIMIT 3;

8️--Test edge cases
--NULL values last
SELECT * FROM students
ORDER BY email IS NULL, email;

--Same age handling
SELECT * FROM students
ORDER BY age DESC, name ASC;