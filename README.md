# 📊 Elevate Labs - SQL Task 4
Welcome to SQL Task 4 of my Elevate Labs internship! This project demonstrates intermediate SQL querying techniques, focusing on sorting, limiting data, and implementing pagination.

## 🎯 Task Objective
The primary goal of this task is to:

- **Sort Data:** Use `ORDER BY` to retrieve records in ascending and descending order.
- **Multi-Level Sorting:** Apply sorting across multiple columns simultaneously.
- **Limit Results:** Restrict the number of rows returned using `LIMIT`.
- **Conditional Sorting:** Combine filtering (`WHERE`) with sorting (`ORDER BY`).
- **Pagination:** Navigate through subsets of data using `OFFSET`.

## 🛠️ Prerequisites
To successfully run the scripts in this project, ensure you have the following:

- **SQL Server:** MySQL, MariaDB, or any compatible SQL engine.
- **SQL Client:** A command-line interface (CLI) or a graphical tool like MySQL Workbench.

## 🏗️ Database Schema
The project uses a `students` table to demonstrate data querying techniques.

### `students` Table Structure
| Column Name | Data Type | Description |
| :--- | :--- | :--- |
| 🔑 `id` | INT | Primary Key, Auto-increment |
| 👤 `name` | VARCHAR(50) | Full name of the student |
| 🔢 `age` | INT | Student's age |
| 📧 `email` | VARCHAR(100) | Student's email address |
| 🏢 `department` | VARCHAR(50) | Department of the student |

## 📖 How to Use
Follow these steps to initialize and test the database:

1. **Start Server:** Ensure your SQL server instance is running.
2. **Connect:** Use your preferred SQL client to connect to the server.
3. **Execute Script:** Open and run the `task4.sql` file.
   ```sql
   source path/to/task4.sql;
   ```
4. **Verify:** Check the output to observe the results of different SQL query operations.

## 🔍 Key Operations Included
The `task4.sql` script includes several essential SQL operations:

### 1. Sorting Data (ASC & DESC)
```sql
SELECT * FROM students ORDER BY age ASC;
SELECT * FROM students ORDER BY age DESC;
```

### 2. Multi-column Sorting
```sql
SELECT * FROM students ORDER BY department ASC, age DESC;
```

### 3. Limiting Results
```sql
SELECT * FROM students ORDER BY age DESC LIMIT 3;
```

### 4. Combining ORDER BY with WHERE
```sql
SELECT * FROM students WHERE department = 'CSE' ORDER BY age ASC;
```

### 5. Pagination using OFFSET
```sql
SELECT * FROM students ORDER BY id LIMIT 2 OFFSET 0;
SELECT * FROM students ORDER BY id LIMIT 2 OFFSET 2;
```

> **Tip**
> 
> You can execute the different `SELECT` queries individually to observe how `ORDER BY`, `LIMIT`, and `OFFSET` sort, restrict, and paginate the result set differently.

---
<div align="center">
  Submitted by: Vijayapandian T | Elevate Labs SQL Internship Task 4
</div>
