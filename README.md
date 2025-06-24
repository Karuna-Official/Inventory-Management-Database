# Inventory Management System (SQL)

## 📌 Description
A relational database system designed for managing product inventory, supplier details, orders, and categories. Developed using MySQL, this project demonstrates database design, data normalization, and sample data handling for real-world scenarios.

## 📂 Features
- Products with category and stock details
- Supplier management
- Order and order detail records
- Reorder level management
- 100+ rows of sample data for testing

## 🗂️ Tables
- Products
- Categories
- Suppliers
- Orders
- OrderDetails

## 🛠️ Technologies Used
- MySQL (SQL syntax)
- Relational database design

## 🚀 How to Run
1. Import `Inventory Management.sql` into your MySQL environment.
2. Execute the script to create database, tables, and seed data.

## 💡 Sample Queries
```sql
-- Get all products below reorder level
SELECT product_name, stock_quantity, reorder_level 
FROM Products 
WHERE stock_quantity < reorder_level;

-- Get total number of orders per supplier
SELECT s.supplier_name, COUNT(o.order_id) AS total_orders
FROM Suppliers s
JOIN Orders o ON s.supplier_id = o.supplier_id
GROUP BY s.supplier_name;
