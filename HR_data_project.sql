CREATE DATABASE IF NOT EXISTS HRDatabase;
USE HRDatabase;
CREATE TABLE Employees (
EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
FirstName VARCHAR (50),
LastName VARCHAR (50),
Department VARCHAR (50),
JobTitle VARCHAR (100),
Salary DECIMAL(10,2),
HireDate DATE,
TerminationDate DATE
);
INSERT INTO  Employees (FirstName, LastName, Department, JobTitle, Salary, HireDate, TerminationDate)
VALUES
('Lina', 'Volkova', 'HR', 'HR Assistant', 48000.00, '2022-04-10', NULL),
('Maksim', 'Petrenko', 'IT', 'Junior Developer', 61000.00, '2021-07-05', NULL),
('Olya', 'Zvereva', 'Finance', 'Payroll Specialist', 54000.00, '2020-02-15', '2024-03-01'),
('Sasha', 'Ivanovich', 'IT', 'Data Analyst', 67000.00, '2022-09-01', NULL),
('Eva', 'Kapustina', 'HR', 'Recruitment Manager', 72000.00, '2019-11-20', NULL),
('Artur', 'Smirnovsky', 'Sales', 'Sales Representative', 59000.00, '2021-05-30', NULL),
('Dasha', 'Mirova', 'Finance', 'Junior Accountant', 52000.00, '2023-01-10', NULL),
('Ilya', 'Snegirev', 'IT', 'System Admin', 68000.00, '2018-08-18', '2023-12-01'),
('Zina', 'Grozna', 'HR', 'Benefits Coordinator', 50000.00, '2020-06-12', NULL),
('Bogdan', 'Chernov', 'IT', 'Database Admin', 74000.00, '2022-10-22', NULL),
('Yana', 'Rudikova', 'Sales', 'Account Manager', 63000.00, '2020-04-03', '2025-02-15'),
('Timur', 'Khromov', 'Finance', 'Financial Analyst', 71000.00, '2019-03-14', NULL),
('Liza', 'Baranova', 'IT', 'QA Engineer', 65000.00, '2023-07-01', NULL),
('Vadim', 'Tikhon', 'Sales', 'Sales Intern', 42000.00, '2024-06-10', NULL),
('Anfisa', 'Moroz', 'HR', 'Training Specialist', 56000.00, '2021-12-05', NULL);

SELECT * FROM Employees;

-- 1. Number of Employees per Department
SELECT Department, Count(*) AS TotalEmployees
FROM Employees
GROUP BY Department;

-- 2. Average Salary by Department
SELECT Department, AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY Department;

-- 3. Current Employees (Not Terminated)
SELECT * FROM Employees
WHERE TerminationDate IS NULL;

-- 4. Employee Turnover Rate (%)
SELECT 
(SELECT COUNT(*) FROM Employees WHERE TerminationDate IS NOT NULL) * 100 / COUNT(*) AS TurnoverRate
FROM Employees;

-- 5. Average Tenure of Employees (Years)
SELECT 
AVG(DATEDIFF(IFNULL(TerminationDate, CURDATE()), HireDate)) / 365 AS AvgYearsWorked
FROM Employees;

-- 6. Employees Terminated in 2025
SELECT * FROM Employees
WHERE YEAR(TerminationDate) = 2025;
