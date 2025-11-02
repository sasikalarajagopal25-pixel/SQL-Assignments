-- TO create database Employee using Constraints
CREATE DATABASE Employee;
-- To use database
USE Employee;

-- To create table Departments
CREATE TABLE Departments(
Department_Id INT UNIQUE PRIMARY KEY,     -- To identify UNIQUE and set Primary Key
Department_Name VARCHAR(100) NOT NULL UNIQUE      -- To avoid duplicate unique and not null
);

-- To create table Location
CREATE TABLE Location(
Location_Id INT AUTO_INCREMENT UNIQUE PRIMARY KEY,    -- To aotu increment unique and set Primary key
Location VARCHAR(30) NOT NULL UNIQUE                  -- To identify not null and unique
);

-- To create table Employees
CREATE TABLE Employees(
Employee_Id INT UNIQUE PRIMARY KEY,        -- To  identify unique and set Primary key
Employee_Name VARCHAR(50),                  -- To Ensure that employee name Provide
Gender CHAR(1) CHECK(Gender IN ('M','F')),     -- To acceptable values for gender field only 'M','F'
Age INT CHECK(Age>=18),                        -- To Ensure Employee age above 18 or above
Hire_Date DATE DEFAULT (CURRENT_DATE),          -- To Ensure Hire_Date otherwise Current_Date display
Department_Id INT,
Location_Id INT,
Designation VARCHAR(100),
salary DECIMAL(10,2),
FOREIGN KEY (Department_Id) REFERENCES Departments(Department_Id),  -- To Link Departments Table using Foreign key
FOREIGN KEY (Location_Id) REFERENCES Location(Location_Id)          -- To Link Location Table using Foreign key
);
Drop table Employees;
USE employee;

-- To insert the values of departments table

INSERT INTO Departments (Department_id, Department_name) VALUES
(1, 'Software Development'),
(2, 'Marketing'),
(3, 'Data Science'),
(4, 'Human Resources'),
(5, 'Product Management'),
(6, 'Content Creation'),
(7, 'Finance'),
(8, 'Design'),
(9, 'Research and Development'),
(10, 'Customer Support'),
(11, 'Business Development'),
(12, 'IT'),
(13, 'Operations');

SELECT * FROM Departments;

-- To insert the values of location table location_id auto increament

INSERT INTO Location (Location) VALUES
('Chennai'),
('Bangalore'),
('Hyderabad'),
('Pune');

SELECT * FROM Location;

-- To insert the value of employees table

INSERT INTO Employees (Employee_Id, Employee_Name, Gender, Age, Hire_date, Designation, Department_id, Location_id, Salary) VALUES
(5001, 'Vihaan Singh', 'M', 27, '2015-01-20', 'Data Analyst', 3, 4, 60000),
(5002, 'Reyansh Singh', 'M', 31, '2015-03-10', 'Network Engineer', 12, 1, 80000),
(5003, 'Aaradhya Iyer', 'F', 26, '2015-05-20', 'Customer Support Executive', 10, 2, 45000),
(5004, 'Kiara Malhotra', 'F', 29, '2015-07-05', NULL, 8, 3, 70000),
(5005, 'Anvi Chaudhary', 'F', 25, '2015-09-11', 'Business Development Executive', 11, 1, 55000),
(5006, 'Dhruv Shetty', 'M', 28, '2015-11-20', 'UI Developer', 8, 2, 65000),
(5007, 'Anushka Singh', 'F', 32, '2016-01-15', 'Marketing Manager', 2, 3, 90000),
(5008, 'Diya Jha', 'F', 27, '2016-03-05', 'Graphic Designer', 8, 4, 70000),
(5009, 'Kiaan Desai', 'M', 30, '2016-05-20', 'Sales Executive', 11, 3, 55000),
(5010, 'Atharv Yadav', 'M', 29, '2016-07-10', 'Systems Administrator', 12, 4, 80000),
(5011, 'Saanvi Patel', 'F', 28, '2016-09-20', 'Marketing Analyst', 2, 1, 60000),
(5012, 'Myra Verma', 'F', 26, '2016-11-05', 'Operations Manager', 13, 2, 95000),
(5013, 'Arnav Rao', 'M', 33, '2017-01-20', 'Customer Success Manager', 10, 3, 75000),
(5014, 'Vihaan Mohan', 'M', 30, '2017-03-10', 'Supply Chain Analyst', 10, 2, 60000),
(5015, 'Ishaan Kumar', 'M', 27, '2017-05-20', 'Financial Analyst', 7, 1, 85000),
(5016, 'Zoya Khan', 'F', 31, '2017-07-05', 'Legal Counsel', 4, 4, 100000),
(5017, 'Kabir Nair', 'M', 28, '2017-09-11', 'IT Support Specialist', 12, 2, 80000),
(5018, 'Ishan Mishra', 'M', 25, '2017-11-20', 'Research Scientist', 9, 3, 75000),
(5019, 'Ishika Patel', 'F', 29, '2018-01-15', 'Talent Acquisition Specialist', 4, 4, 55000),
(5020, 'Aarav Nair', 'M', 32, '2018-03-05', 'Software Engineer', 1, 1, 90000),
(5021, 'Advik Kapoor', 'M', 26, '2018-05-20', 'Finance Analyst', 7, 3, 85000),
(5022, 'Aadhya Iyengar', 'F', 28, '2018-07-10', 'HR Specialist', 4, 4, 60000),
(5023, 'Anika Paul', 'F', 30, '2018-09-20', 'Public Relations Specialist', 2, 2, 70000),
(5024, 'Aryan Shetty', 'M', 27, '2018-11-05', 'Product Manager', 5, 1, 95000),
(5025, 'Avni Iyengar', 'F', 31, '2019-01-20', 'Data Scientist', 3, 4, 100000),
(5026, 'Vivaan Singh', 'M', 29, '2019-03-10', 'Business Analyst', 3, 2, 75000),
(5027, 'Ananya Paul', 'F', 32, '2019-05-20', 'Content Writer', 6, 3, 60000),
(5028, 'Anaya Kapoor', 'F', 26, '2019-07-05', 'Event Coordinator', 6, 1, 60000),
(5029, 'Arjun Kumar', 'M', 33, '2019-09-11', 'Quality Assurance Analyst', 12, 2, 80000),
(5030, 'Sara Iyer', 'F', 28, '2019-11-20', 'Project Manager', 5, 1, 90000);

SELECT * FROM Employees;          

-- To Distinct

SELECT DISTINCT Salary FROM Employees;           -- To distinct salaries from the Employees table

-- To  Alias (AS)

SELECT Age AS Employee_Age FROM Employees;           -- To  aliases for the "age" -  "Employee_Age"
SELECT Salary AS Employee_Salary FROM Employees;     -- To   aliases for the  "salary" - "Employee_Salary"

-- To Where Clause & Operators
-- To employees salary greater than ₹50000 & hired before '2016-01-01'

SELECT * FROM Employees
WHERE Salary > 50000 AND Hire_Date < '2016-01-01';   

SET SQL_SAFE_UPDATES=0;

-- To employee designation is missing & fill it with "Data Scientist"

UPDATE Employees
SET Designation = 'Data Scientist'
WHERE Designation IS NULL OR Designation = '';  

SELECT * FROM Employees;

-- To Sorting and Grouping Data
-- To ORDER BY
-- To employees sorted by department ID in ASC order and salary in DESC order

SELECT Employee_Id,Salary FROM Employees ORDER BY Employee_Id ASC,Salary DESC;

-- To LIMIT
-- To the first 5 employees hired in the year 2018

SELECT * FROM Employees
WHERE Hire_Date >= '2018-01-01' AND Hire_Date < '2019-01-01'
ORDER BY Hire_Date ASC
LIMIT 5;

-- To Aggregate Functions
-- To the sum of all salaries in the Finance department

SELECT SUM(E.Salary) AS TotalFinanceSalary
FROM Employees AS E
JOIN Departments AS D ON E.Department_id = D.Department_id
WHERE D.Department_Name = 'Finance';

-- To  the minimum age among all employees

SELECT MIN(Age) AS Minimum_Age
FROM Employees;


-- To GROUP BY
-- To  the maximum salary for each location

SELECT L.Location,MAX(E.Salary) AS Maximum_Salary
FROM Employees E
JOIN Location L ON E.Location_Id = L.Location_Id
GROUP BY L.Location;

-- To  the average salary for each designation containing the word 'Analyst'.

SELECT Designation,AVG(Salary) AS Average_Salary
FROM Employees
WHERE Designation LIKE '%Analyst%'
GROUP BY Designation;

-- To departments with less than 3 employees

SELECT D.Department_Name,COUNT(E.Employee_Id) AS Number_of_employees
FROM Departments D
LEFT JOIN Employees E ON D.Department_Id =E.Department_Id
GROUP BY D.Department_Id, D.Department_Name
HAVING COUNT(E.Employee_id) < 3;

-- To HAVING

-- To locations with female employees whose average age is below 30

SELECT L.Location,AVG(E.Age)
FROM Employees E
JOIN Location L ON E.Location_ID = L.Location_ID
WHERE E.Gender = 'F'
GROUP BY L.Location
HAVING AVG(E.Age) < 30;

-- To  Inner Join
-- To  employee names, their designations, and department names where employees are assigned to a department

SELECT E.Employee_Name,E.Designation,D.Department_Name
FROM Employees AS E
INNER JOIN Departments AS D ON E.Department_Id=D.Department_Id;

-- To Left Join
-- To all departments along with the total number of employees in each department, including departments with no employees

SELECT D.Department_Name,COUNT(E.employee_id) AS Count_employees
FROM Departments AS D
LEFT JOIN Employees AS E ON D.Department_Id = E.Department_Id
GROUP BY D.department_Name
ORDER BY D.department_Name;

-- To Right Join
-- To  all locations ,employee names of employees assigned to each location. If no employees are assigned to a location, display NULL for employee name

SELECT L.Location,E.Employee_Name
FROM Employees AS E
RIGHT JOIN Location AS L ON E.Location_ID = L.Location_ID;