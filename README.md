# 📊 Task 6: Sales Trend Analysis Using Aggregations

## 🧠 Objective
Analyze **monthly revenue** and **order volume** using SQL aggregations on a dataset representing e-commerce sales.

---

## 🛠 Tools Used
- SQL (Tested with **MySQL**)
- Sample Dataset: `online_sales.csv`

---

## 📁 Dataset Description

The dataset `online_sales.csv` includes:

| Column Name | Description              |
|-------------|--------------------------|
| order_id    | Unique identifier of order |
| order_date  | Date the order was placed |
| amount      | Order amount in USD       |
| product_id  | ID of the purchased product |

![online_sales_table](https://github.com/user-attachments/assets/02567efd-4dd8-4416-a779-248ea3935009)

---

## 📌 SQL Queries

### 1. 📅 Monthly Revenue and Order Volume
```sql
SELECT
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    online_sales
GROUP BY
    YEAR(order_date), MONTH(order_date)
ORDER BY
    year, month;
```
![Monthly_Revenue_and_Order_Volume](https://github.com/user-attachments/assets/bde93bb3-e940-46c3-bdcd-eb66e147e42d)

---
### 2. Top 3 Months by Sales (Revenue)
```sql
SELECT
  CONCAT(year, '-', LPAD(month, 2, '0')) AS date,
  total_revenue
FROM (
  SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue
  FROM
    online_sales
  GROUP BY
    YEAR(order_date),
    MONTH(order_date)
) AS monthly
ORDER BY
  total_revenue DESC
LIMIT 3;

```
![Top_3_Months_by_Sales_(Revenue)](https://github.com/user-attachments/assets/83e3dcdb-8b6d-41a4-9e86-d07376299b47)

---
