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
