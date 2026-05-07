# Day 1 - SQL Practice Queries

## Overview

This repository contains my **Day 1 SQL Practice Assignment** from the Databricks training program conducted by our college.

The assignment focuses on practicing fundamental and intermediate SQL concepts using relational database tables, joins, aggregate functions, nested queries, and real-world SQL problem-solving scenarios.

---

# Database Schema

The practice database consists of the following tables:

## 1. Department Table

Stores department details.

| Column Name   | Data Type   |
| ------------- | ------------ |
| department_id | INT          |
| name          | VARCHAR(50)  |

---

## 2. Employee Table

Stores employee information.

| Column Name   | Data Type   |
| ------------- | ------------ |
| emp_id        | INT          |
| name          | VARCHAR(50)  |
| age           | INT          |
| salary        | DECIMAL      |
| department_id | INT          |
| hire_date     | DATE         |

---

## 3. Project Table

Stores project details associated with departments.

| Column Name   | Data Type   |
| ------------- | ------------ |
| project_id    | INT          |
| name          | VARCHAR(50)  |
| department_id | INT          |

---

# Files Included

```text
Day-1/
│
├── schema.sql
│   ├── Database creation scripts
│   ├── CREATE TABLE statements
│   ├── PRIMARY KEY & FOREIGN KEY constraints
│   ├── Sample data insertion
│   └── Additional edge-case test data
│
├── queries.sql
│   └── Solutions for all SQL practice questions
│
├── output.sql
│   └── Output/results of executed SQL queries
│
└── README.md
```

---

# SQL Concepts Practiced

## Basic Queries
- Selecting all columns
- Selecting specific columns
- Filtering records using conditions

## String Matching Queries
- LIKE operator
- Wildcard searches using `%` and `_`
- Pattern matching

## Date Queries
- Date filtering
- Year and month extraction
- Date comparisons

## Aggregate Functions
- `SUM()`
- `AVG()`
- `MIN()`
- `MAX()`
- `COUNT()`

## GROUP BY Queries
- Grouping records
- Department-wise calculations

## HAVING Clause
- Filtering grouped records using aggregate conditions

## ORDER BY Queries
- Sorting data in ascending and descending order
- Multi-column sorting

## JOIN Queries
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- Multi-table joins

## Nested & Correlated Queries
- Subqueries
- Correlated subqueries
- Nth highest salary queries

## Moderate Difficulty SQL Problems
- Complex joins
- Aggregate + nested query combinations
- Real-world SQL scenarios

---

# Total Questions Practiced

✅ 48 SQL Queries

---

# Learning Outcomes

Through this assignment, I learned:

- Designing relational database schemas
- Creating tables with constraints
- Using PRIMARY KEY and FOREIGN KEY relationships
- Writing efficient SQL queries
- Performing JOIN operations
- Working with aggregate functions
- Using GROUP BY and HAVING clauses
- Writing nested and correlated subqueries
- Solving real-world SQL problems
- Handling edge-case test data

---

# Tools & Technologies Used

- SQL
- GitHub

---

# Author

**bhanuvivek-koppisetti**
