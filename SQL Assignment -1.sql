-- To create database Employee
CREATE DATABASE Employee;
-- To use Employee database
USE Employee;

-- To create table Departments
CREATE TABLE Departments(
Department_Id INT,
Department_Name VARCHAR(100)
);
-- To create table Location
CREATE TABLE Location(
Location_Id INT,
Location VARCHAR(30)
);
-- To create table Employees
CREATE TABLE Employees(
Employee_Id INT,
Employee_Name VARCHAR(50),
Gender ENUM('M','F'),
Age INT,
Hire_Date Date,
Designation VARCHAR(100),
Department_Id INT,
Location_Id INT,
Salary DECIMAL(10,2)
);
-- To add column using ALTER
ALTER TABLE Employees
ADD Email INT;
-- To modify column Designation wider range values
ALTER TABLE Employees
MODIFY Designation VARCHAR(300);
-- To drop Age in Employees table
ALTER TABLE Employees
DROP COLUMN Age;
-- To reanme Hire_Date to Date_of_Joining using ALTER
ALTER TABLE Employees
RENAME COLUMN Hire_Date TO Date_of_Joining;

-- To RENAME Department to Department_Info 
RENAME TABLE Departments TO Department_Info;
-- To RENAME Location To Locations
RENAME TABLE Location TO Locations;
-- To TRUNCATE Employees table
TRUNCATE TABLE Employees;
USE Employee;
-- To DROP Employees table
DROP TABLE Employees;
-- To DROP Employee Database
DROP DATABASE Employee;

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
FOREIGN KEY (Department_Id) REFERENCES Departments(Department_Id),  -- To Link Departments Table using Foreign key
FOREIGN KEY (Location_Id) REFERENCES Location(Location_Id)          -- To Link Location Table using Foreign key
);
