-- 1.1. Tạo cơ sở dữ liệu
CREATE DATABASE CompanyDB;
USE CompanyDB;

-- 1.2. Tạo bảng Employees
CREATE TABLE Employees (
    `EmployeeID` INT AUTO_INCREMENT PRIMARY KEY,
    `FirstName` VARCHAR(50),
    `LastName` VARCHAR(50),
    `HireDate` DATE,
    `Salary` INT
);

-- 1.3. Thêm cột Department
ALTER TABLE Employees
ADD COLUMN Department VARCHAR(100);

-- 1.4. Chỉnh sửa kiểu dữ liệu Salary thành DECIMAL(10,2)
ALTER TABLE Employees
MODIFY COLUMN Salary DECIMAL(10,2);

-- 2.1 Tạo bảng Products
CREATE TABLE Products (
    `ProductID` INT AUTO_INCREMENT PRIMARY KEY,
    `ProductName` VARCHAR(100),
    `Category` VARCHAR(50),
    `Price` DECIMAL(10,2),
    `StockQuantity` INT
);

-- 2.2 Chèn 3 bản ghi mẫu vào bảng Products
INSERT INTO Products (ProductName, Category, Price, StockQuantity)
VALUES
('Laptop Dell XPS 13', 'Electronics', 1200.00, 15),
('Wireless Mouse Logitech', 'Accessories', 25.50, 100),
('Office Chair Ergonomic', 'Furniture', 180.75, 30);

-- 2.3 Kiểm tra dữ liệu
SELECT * FROM Products;

-- 3.1 Tạo bảng Departments
CREATE TABLE Departments (
    DepartmentID INT AUTO_INCREMENT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

-- 3.2 Thêm dữ liệu mẫu vào Departments
INSERT INTO Departments (DepartmentName)
VALUES ('IT'), ('HR'), ('Sales');

-- 3.3 Cập nhật lại bảng Employees (thêm cột DepartmentID)
ALTER TABLE Employees
ADD COLUMN DepartmentID INT,
ADD CONSTRAINT fk_department
FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID);

-- 3.4 Thêm nhân viên mẫu
INSERT INTO Employees (FirstName, LastName, HireDate, Salary, DepartmentID)
VALUES
('John', 'Doe', '2020-05-01', 5500.00, 1),
('Anna', 'Smith', '2021-06-15', 4200.00, 2),
('David', 'Nguyen', '2019-03-10', 3000.00, 3),
('Lisa', 'Tran', '2022-01-05', 2500.00, 3);

-- 3.5. Kiểm tra dữ liệu Employees kèm DepartmentID
SELECT e.EmployeeID, e.FirstName, e.LastName, e.Salary, e.Department, d.DepartmentName
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID;

-- 3.6 Cập nhật thông tin lương của một nhân viên
UPDATE Employees
SET Salary = 5000.00
WHERE EmployeeID = 2;

-- 3.7 Xóa tất cả nhân viên có mức lương thấp hơn một giá trị nhất định
DELETE FROM Employees
WHERE Salary < 3000.00;

-- 3.8 Kiểm tra kết quả sau các thao tác
SELECT * FROM Employees;