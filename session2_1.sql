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