# Data-Cleaning-Task
# 🧹 Data Cleaning Task using MySQL

## 📌 Project Overview

This project focuses on cleaning and preparing an Orders dataset using MySQL. The objective is to identify and fix common data quality issues to make the dataset accurate, consistent, and ready for analysis.

---

## 📂 Dataset

**File:** `Orders_2024_Jan_Jun.csv`

### Dataset Columns

- OrderID
- OrderDate
- CustomerID
- CustomerName
- ProductID
- ProductName
- Category
- Quantity
- Price
- TotalAmount
- PaymentMethod

---

## 🎯 Objectives

- Identify duplicate records
- Remove duplicate rows
- Handle missing (NULL) values
- Standardize date formats
- Update inconsistent values
- Prepare the dataset for analysis

---

## 🛠 SQL Concepts Used

- SELECT
- DISTINCT
- WHERE
- UPDATE
- DELETE
- ALTER TABLE
- CASE WHEN
- ROW_NUMBER()
- Window Functions
- STR_TO_DATE()
- GROUP BY
- HAVING

---

## 🔍 Data Cleaning Tasks Performed

- Checked duplicate records using `ROW_NUMBER()`
- Identified duplicate `OrderID` values
- Removed duplicate rows
- Handled NULL values in `PaymentMethod`
- Converted `OrderDate` into MySQL `DATE` format
- Updated column values using `CASE WHEN`
- Modified column data types using `ALTER TABLE`

---

## 🛠 Tools Used

- MySQL Workbench
- Git
- GitHub

---

## 📁 Project Structure

```
Data-Cleaning-Task/
│── README.md
│── data_cleaning.sql
│── Orders_2024_Jan_Jun.csv
```

---

## 📈 Outcome

The dataset was successfully cleaned by removing duplicate records, handling missing values, standardizing date formats, and updating inconsistent data using MySQL queries. The cleaned dataset is ready for further analysis and reporting.

---

## 👨‍💻 Author

**Mangineni Jagadeesh**