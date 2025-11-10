-- 1. Tạo cơ sở dữ liệu
CREATE DATABASE CompanyDB;
USE CompanyDB;

-- 2. Tạo bảng Employees
CREATE TABLE Employees (
    `EmployeeID` INT AUTO_INCREMENT PRIMARY KEY,
    `FirstName` VARCHAR(50),
    `LastName` VARCHAR(50),
    `HireDate` DATE,
    `Salary` INT
);

-- 3. Thêm cột Department
ALTER TABLE Employees
ADD COLUMN Department VARCHAR(100);

-- 4. Chỉnh sửa kiểu dữ liệu Salary thành DECIMAL(10,2)
ALTER TABLE Employees
MODIFY COLUMN Salary DECIMAL(10,2);

-- Tạo bảng Products
CREATE TABLE Products (
    `ProductID` INT AUTO_INCREMENT PRIMARY KEY,
    `ProductName` VARCHAR(100),
    `Category` VARCHAR(50),
    `Price` DECIMAL(10,2),
    `StockQuantity` INT
);

-- Chèn 3 bản ghi mẫu vào bảng Products
INSERT INTO Products (ProductName, Category, Price, StockQuantity)
VALUES
('Laptop Dell XPS 13', 'Electronics', 1200.00, 15),
('Wireless Mouse Logitech', 'Accessories', 25.50, 100),
('Office Chair Ergonomic', 'Furniture', 180.75, 30);

-- Kiểm tra dữ liệu
SELECT * FROM Products;