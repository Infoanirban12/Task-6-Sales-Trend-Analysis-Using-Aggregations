CREATE DATABASE sales_db;
USE sales_db;

CREATE TABLE online_sales (
    order_id INT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id VARCHAR(10)
);

desc online_sales;

INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(101, '2024-01-05', 120.00, 'P001'),
(102, '2024-01-12', 75.50, 'P003'),
(103, '2024-02-07', 199.99, 'P002'),
(104, '2024-02-15', 89.00, 'P001'),
(105, '2024-03-03', 50.00, 'P004'),
(106, '2024-03-25', 310.25, 'P002'),
(107, '2024-03-30', 44.75, 'P003'),
(108, '2024-04-10', 150.00, 'P005'),
(109, '2024-04-18', 230.00, 'P001'),
(110, '2024-05-01', 80.00, 'P002'),
(111, '2024-05-12', 60.00, 'P003'),
(112, '2024-05-22', 90.00, 'P005');

select *from online_sales;
