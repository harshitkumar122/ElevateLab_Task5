📘 ElevateLabs_Task5 – SQL Joins Practice
This task focuses on mastering SQL join operations to combine data from multiple related tables. In this example, we simulate a simple e-commerce scenario with Customers and Orders, and apply different types of joins like INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL OUTER JOIN.

🎯 Objective
Practice how to retrieve and merge data across multiple related tables using SQL JOIN operations.

🛠️ Tools
MySQL Workbench

(Alternatively: DB Browser for SQLite — with modifications)

📦 Deliverables
A working SQL file that:

Creates two related tables: Customers and Orders

Demonstrates use of INNER, LEFT, RIGHT, and FULL OUTER joins

Contains sample data inserts

🧠 Guide
Create a simple relational schema with foreign key constraints.

Populate the tables with sample data (e.g., customers and their orders).

Execute join queries to demonstrate:

INNER JOIN: only matching records

LEFT JOIN: all records from Customers

RIGHT JOIN: all records from Orders

FULL OUTER JOIN: all records from both (simulated via UNION)

Test each JOIN type to understand merging behavior.

📄 File Description
Schema:
Customers

customer_id (PK), name, email

Orders

order_id (PK), customer_id (FK), order_date, amount

✅ Outcome
Mastery of merging data
