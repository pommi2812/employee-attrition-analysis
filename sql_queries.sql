USE ProjectDB;

SELECT * FROM INFORMATION_SCHEMA.TABLES;

SELECT * FROM hr_employee;

--Total Employees

SELECT COUNT(*) AS Total_Employees
FROM hr_employee;

--Attrition Count

SELECT Attrition, COUNT(*) AS Employee_Count
FROM hr_employee
GROUP BY Attrition;

--Attrition Rate

SELECT 
(COUNT(CASE WHEN Attrition='Yes' THEN 1 END)*100.0)/COUNT(*)
AS Attrition_Rate
FROM hr_employee;

--Employees by Department

SELECT Department, COUNT(*) AS Employee_Count
FROM hr_employee
GROUP BY Department;

--Average Salary by Department

SELECT Department, AVG(Monthly_Income) AS Avg_Salary
FROM hr_employee
GROUP BY Department;

--Attrition by Job Role

SELECT Job_Role, COUNT(*) AS Employee_Left
FROM hr_employee
WHERE Attrition = 'Yes'
GROUP BY Job_Role;

--Average Age by Department

SELECT Department, AVG(Age) AS Avg_Age
FROM hr_employee
GROUP BY Department;

--Overtime vs Attrition

SELECT Overtime, COUNT(*) AS Employees
FROM hr_employee
WHERE Attrition = 'Yes'
GROUP BY Overtime;

--Average Job Satifaction

SELECT AVG(Job_Satisfaction) AS avg_job_satisfaction
FROM hr_employee;

--Employee by Educational_Level

SELECT Education_Level,
COUNT(*) AS Employees
FROM hr_employee
GROUP BY Education_Level;