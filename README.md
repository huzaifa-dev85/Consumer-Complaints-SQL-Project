# Consumer-Complaints-SQL-Project
This project analyzes Consumer Complaint data using MySQL. The dataset contains customer complaints from different states, products, and issue categories. Various SQL queries were used to extract meaningful insights and answer business-related questions.
# Insites
# Consumer Complaints SQL Project

## Overview
This project is a preliminary SQL analysis of consumer complaints received by financial institutions between July 2013 and March 2014. The dataset contains 4,725 complaints. The goal is to load the data into a database and answer basic business questions using SQL.

**Tools:** MySQL (XAMPP), phpMyAdmin, VS Code, Git/GitHub

## Dataset
The `complaints` table includes the following key columns:
- `date_received`, `date_sent_to_company`
- `product_name`, `sub_product`, `issue`, `sub_issue`
- `company`, `state_name`, `zip_code`
- `submitted_via`, `company_response_to_consumer`, `timely_response`, `consumer_disputed`

## Project Files
- `complaint_dataset.sql`: table structure and full dataset
- `Task_Queries.sql`: all analysis queries
- `screenshots/`: query results

## Tasks, Queries and Insights

### 1. Complaints received and sent to the company on the same day
```sql
SELECT COUNT(*) AS same_day_complaints
FROM complaints
WHERE date_received = date_sent_to_company;
```
![Task 1](task1_same_day.png)

**Insight:** 997 complaints (about 21% of the total) were sent to the company on the same day they were received.

### 2. Complaints received in New York
```sql
SELECT *
FROM complaints
WHERE state_name = 'NY';
```
![Task 2](task2_new_york.png)

**Insight:** New York accounts for 319 complaints.

### 3. Complaints received in New York and California
```sql
SELECT *
FROM complaints
WHERE state_name IN ('NY', 'CA');
```
![Task 3]

**Insight:** The two states together account for 1,071 complaints. California (752) has more than double the complaints of New York (319).

### 4. Rows with the word "Credit" in the Product field
```sql
SELECT *
FROM complaints
WHERE product_name LIKE '%Credit%';
```
![Task 4]

**Insight:** 1,239 complaints are credit-related, split between Credit reporting (674) and Credit card (565).

### 5. Rows with the word "Late" in the Issue field
```sql
SELECT *
FROM complaints
WHERE issue LIKE '%Late%';
```
![Task 5]

**Insight:** 29 complaints relate to late fees.

## How to Run
1. Start Apache and MySQL in XAMPP.
2. Open phpMyAdmin and create a database named `complaint_dataset`.
3. Import `complaint_dataset.sql`.
4. Run the queries from `Task_Queries.sql`.

## Key Takeaways
- Roughly one in five complaints is forwarded to the company on the same day.
- California generates far more complaints than New York in this dataset.
- Credit-related products make up about a quarter of all complaints.