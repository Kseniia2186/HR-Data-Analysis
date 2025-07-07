
# HR Data Analysis Project 

This project demonstrates how to analyze employee data using MySQL and Excel. The goal is to simulate a realistic HR dataset, write queries for key HR metrics, and create a professional dashboard for visualization.

---

## Project Files

- `Employees.xlsx` — dataset exported from MySQL and formatted in Excel
- `hr_data_project.sql` — SQL script: table creation, data insertion, and HR analytics queries
- `hr_dashboard.png` — Excel dashboard with KPIs and charts
- `README.md` — this file

---

##  Project Objectives

- Practice creating and querying an employee table in SQL
- Calculate common HR metrics (turnover, active employees, avg salary, etc.)
- Build a clean Excel dashboard with pivot tables and charts
- Create a presentable GitHub project for portfolio use

---

##  Dashboard Overview

**KPI Block:**
- Total Employees: 15
- Active Employees: 12
- Terminated Employees: 3
- Turnover Rate: 20%
- Average Salary: $60,133
- Hired in 2024–2025: 1

**Charts:**
- Pie Chart: Employees per Department
- Bar Chart: Average Salary by Department
- Doughnut Chart: Employee Status Distribution


---

##  Tools Used

- **MySQL Workbench** — for database operations
- **Excel** — for pivot tables and dashboard
- **PowerPoint** — to export the dashboard as a PNG image

---

## Example SQL Queries

```sql
-- Count employees by department
SELECT Department, COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY Department;

-- Average salary per department
SELECT Department, AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY Department;

-- Active employees (not terminated)
SELECT * FROM Employees
WHERE TerminationDate IS NULL;

-- Turnover rate
SELECT 
  (SELECT COUNT(*) FROM Employees WHERE TerminationDate IS NOT NULL) * 100.0 / COUNT(*) AS TurnoverRate
FROM Employees;
```


